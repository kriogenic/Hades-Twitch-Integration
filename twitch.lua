package.path = "../Content/Mods/TwitchIntegration/libs/share/?.lua;" .. package.path
package.cpath = "../Content/Mods/TwitchIntegration/libs/lib/?.dll;" .. package.cpath
local socket = require("socket")

local voting = 0
local isconnected = 0
local channeljoined = 0
local client = nil
local chosentable = {}
local votes = {0,0,0,0}
local voters = {}

local croomname = "error"

local NoVoteRooms = { "RoomPreRun", "DeathAreaBedroom", "DeathArea", "PostBoss" }


TwitchIntegrationData.VotingWindow = { Components = {} }
TwitchIntegrationData.NextVotingWindow = { Components = {} }

function IsInArray(array,value)
	for _,k in ipairs(array) do
		if k == value then
			return true
		end
	end
	return false
end

function IsInGame()
	if CurrentRun ~= nil and CurrentRun.CurrentRoom ~= nil then
		
		-- If dead, leaving a room or on a screen transition
		if CurrentRun.Hero.IsDead or CurrentRun.InvulnerableFlags["LeaveRoom"] or CurrentRun.CurrentRoom.InStageTransition then
			return false
		end
		
		-- If in an invalid room
		for _,roomname in ipairs(NoVoteRooms) do
			if string.find(croomname, roomname) then
				return false
			end
		end

		return true
	end
	
	return false
end

function OpenVotingWindow()
  ScreenAnchors.VotingWindow = DeepCopyTable(TwitchIntegrationData.VotingWindow)
  local screen = ScreenAnchors.VotingWindow
  local components = screen.Components
  screen.Name = "VotingWindowName"
 
  SetConfigOption({ Name = "UseOcclusion", Value = false })

  PlaySound({ Name = "/SFX/Menu Sounds/GodBoonInteract" })
  --Background
	local xpos = 1739
	local ypos = 64
	
	local xoffset = 1065
	local yoffset = 574
	
	xoffset = xpos - xoffset
	yoffset = ypos - yoffset
	
	components.Background = CreateScreenComponent({ Name = "BlankObstacle", Group = "VotingWindowGroup" })
	components.Vote1 = CreateScreenComponent({ Name = "BlankObstacle", Group = "VotingWindowGroup" })
	components.Vote2 = CreateScreenComponent({ Name = "BlankObstacle", Group = "VotingWindowGroup" })
	components.Vote3 = CreateScreenComponent({ Name = "BlankObstacle", Group = "VotingWindowGroup" })
	components.Vote4 = CreateScreenComponent({ Name = "BlankObstacle", Group = "VotingWindowGroup" })
	components.VoteTimer = CreateScreenComponent({ Name = "BlankObstacle", Group = "VotingWindowGroup" })
	components.LeftPart = CreateScreenComponent({ Name = "TraitTrayBackground", Group = "VotingWindowGroup", X = xpos, Y = ypos})
	components.MiddlePart = CreateScreenComponent({ Name = "TraitTray_Center", Group = "VotingWindowGroup", X = xpos - 102, Y = ypos + 15 })
	components.RightPart = CreateScreenComponent({ Name = "TraitTray_Right", Group = "VotingWindowGroup", X = xpos + 154, Y = ypos + 5 })

	SetScaleY({Id = components.LeftPart.Id, Fraction = 0.3})
	SetScaleX({Id = components.LeftPart.Id, Fraction = 0.3})
	
	SetScaleY({Id = components.MiddlePart.Id, Fraction = 0.3})
	SetScaleX({Id = components.MiddlePart.Id, Fraction = 2})
	
	SetScaleY({Id = components.RightPart.Id, Fraction = 0.3})
	SetScaleX({Id = components.RightPart.Id, Fraction = 0.3})
  
  --Static Text
  CreateTextBox({ Id = components.Background.Id, Text = "Voting Ends In:", FontSize = 19,
  OffsetX = xoffset, OffsetY = yoffset, Width = 300, Color = Color.White, Font = "SpectralSCLight",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Left"})

  CreateTextBox({ Id = components.Background.Id, Text = "1. " .. chosentable[1].ui_name, FontSize = 20,
  OffsetX = xoffset, OffsetY = yoffset + 35, Width = 300, Color = Color.Yellow, Font = "CrimsonTextItalic",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Left" })
  
  CreateTextBox({ Id = components.Background.Id, Text = "2. " .. chosentable[2].ui_name, FontSize = 20,
  OffsetX = xoffset, OffsetY = yoffset + 70, Width = 300, Color = Color.Yellow, Font = "CrimsonTextItalic",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Left" })
  
  CreateTextBox({ Id = components.Background.Id, Text = "3. " .. chosentable[3].ui_name, FontSize = 20,
  OffsetX = xoffset, OffsetY = yoffset + 105, Width = 300, Color = Color.Yellow, Font = "CrimsonTextItalic",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Left" })
  
  CreateTextBox({ Id = components.Background.Id, Text = "4. " .. chosentable[4].ui_name, FontSize = 20,
  OffsetX = xoffset, OffsetY = yoffset + 140, Width = 300, Color = Color.Yellow, Font = "CrimsonTextItalic",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Left" })
  
  
  --Dynamic Text
  CreateTextBox({ Id = components.VoteTimer.Id, Text = "120", FontSize = 19,
  OffsetX = xoffset + 240, OffsetY = yoffset, Width = 60, Color = Color.White, Font = "SpectralSCLight",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Right"})

  CreateTextBox({ Id = components.Vote1.Id, Text = "(".. votes[1] ..")", FontSize = 20,
  OffsetX = xoffset + 270, OffsetY = yoffset + 35, Width = 60, Color = Color.Yellow, Font = "CrimsonTextItalic",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Right" })
  
  CreateTextBox({ Id = components.Vote2.Id, Text = "(".. votes[2] ..")", FontSize = 20,
  OffsetX = xoffset + 270, OffsetY = yoffset + 70, Width = 60, Color = Color.Yellow, Font = "CrimsonTextItalic",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Right" })
  
  CreateTextBox({ Id = components.Vote3.Id, Text = "(".. votes[3] ..")", FontSize = 20,
  OffsetX = xoffset + 270, OffsetY = yoffset + 105, Width = 60, Color = Color.Yellow, Font = "CrimsonTextItalic",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Right" })
  
  CreateTextBox({ Id = components.Vote4.Id, Text = "(".. votes[4] ..")", FontSize = 20,
  OffsetX = xoffset + 270, OffsetY = yoffset + 140, Width = 60, Color = Color.Yellow, Font = "CrimsonTextItalic",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Right" })
end

function OpenNextVoteWindow()
  ScreenAnchors.NextVotingWindow = DeepCopyTable(TwitchIntegrationData.NextVotingWindow)
  local screen = ScreenAnchors.NextVotingWindow
  local components = screen.Components
  screen.Name = "NextVotingWindowName"
 
  SetConfigOption({ Name = "UseOcclusion", Value = false })

  PlaySound({ Name = "/SFX/Menu Sounds/GodBoonInteract" })
  --Background
	local xpos = 1650
	local ypos = 32
	
	local xoffset = 975
	local yoffset = 533
	
	xoffset = xpos - xoffset
	yoffset = ypos - yoffset
	
	components.Background = CreateScreenComponent({ Name = "BlankObstacle", Group = "NextVotingWindowGroup" })
	components.VoteTimer = CreateScreenComponent({ Name = "BlankObstacle", Group = "NextVotingWindowGroup" })
	components.LeftPart = CreateScreenComponent({ Name = "TraitTrayBackground", Group = "NextVotingWindowGroup", X = xpos, Y = ypos})
	components.MiddlePart = CreateScreenComponent({ Name = "TraitTray_Center", Group = "NextVotingWindowGroup", X = xpos - 20, Y = ypos + 3 })
	components.RightPart = CreateScreenComponent({ Name = "TraitTray_Right", Group = "NextVotingWindowGroup", X = xpos + 236, Y = ypos + 1 })

	SetScaleY({Id = components.LeftPart.Id, Fraction = 0.06})
	SetScaleX({Id = components.LeftPart.Id, Fraction = 0.06})
	
	SetScaleY({Id = components.MiddlePart.Id, Fraction = 0.06})
	SetScaleX({Id = components.MiddlePart.Id, Fraction = 2})
	
	SetScaleY({Id = components.RightPart.Id, Fraction = 0.06})
	SetScaleX({Id = components.RightPart.Id, Fraction = 0.06})
  
  --Static Text
  CreateTextBox({ Id = components.Background.Id, Text = "Next Vote In:", FontSize = 19,
  OffsetX = xoffset, OffsetY = yoffset, Width = 300, Color = Color.White, Font = "SpectralSCLight",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Left"})
  
    --Dynamic Text
  CreateTextBox({ Id = components.VoteTimer.Id, Text = "120", FontSize = 19,
  OffsetX = xoffset + 220, OffsetY = yoffset, Width = 60, Color = Color.White, Font = "SpectralSCLight",
  ShadowBlur = 0, ShadowColor = {0,0,0,1}, ShadowOffset={0, 1}, Justification = "Right"})

end

function CloseVotingWindow()
	if ScreenAnchors.VotingWindow ~= nil then
		CloseScreen(GetAllIds(ScreenAnchors.VotingWindow.Components), 0.1)
		PlaySound({ Name = "/SFX/Menu Sounds/GeneralWhooshMENU" })
		ScreenAnchors.VotingWindow = nil
	end
end
 
function CloseNextVoteWindow()
	if ScreenAnchors.NextVotingWindow ~= nil then
		CloseScreen(GetAllIds(ScreenAnchors.NextVotingWindow.Components), 0.1)
		PlaySound({ Name = "/SFX/Menu Sounds/GeneralWhooshMENU" })
		ScreenAnchors.NextVotingWindow = nil
	end
end

function TimeBetweenVote()
	local betweentime = TwitchIntegrationConfig.TimeBetweenVotes
	for i=betweentime,1,-1 do
		if IsInGame() then
		
			if ScreenAnchors.NextVotingWindow == nil then
				OpenNextVoteWindow()
			end
			
			ModifyTextBox({ Id = ScreenAnchors.NextVotingWindow.Components.VoteTimer.Id, Text = "" .. i })
			wait(1)
		else
			while not IsInGame() do
				i = i+1
				wait(1)
			end
		end
	end
	voting = 1
	
	-- Calculate which 4 options will be used and such here
	-- make a table with these options
	local eventCount = 0
	
	---DEBUGGING
	local debugid = nil
	local debugevent = nil
	
	if TwitchIntegrationEvents ~= nil then
		for i,data in ipairs(TwitchIntegrationEvents) do
			eventCount = eventCount + 1
			
			if debugid ~= nil and data.id == debugid then
				debugevent = data
			end
			
			if data.cooldown ~= nil then
					data.cooldown = nil
			end
			
			
		end
	end
	
	chosentable = {} -- this will contain the votes that we want to display and then run for this loop
	if eventCount > 0 then
		for i=1,4 do -- get 4 events for the twitch votes
				local index = math.random(eventCount)
				while TwitchIntegrationEvents[index].cooldown ~= nil do
					index = math.random(eventCount)
				end
				TwitchIntegrationEvents[index].cooldown = true
				table.insert(chosentable,TwitchIntegrationEvents[index])
		end
		
	end
	
	if debugevent ~= nil then
		chosentable = {debugevent,debugevent,debugevent,debugevent}
	end
	
	CloseNextVoteWindow()
	thread(CountdownVote)
end

function CountdownVote()

	OpenVotingWindow()
	local votingtime = TwitchIntegrationConfig.VotingTime
	for i=votingtime,1,-1 do
		if IsInGame() then
		
			if ScreenAnchors.VotingWindow == nil then
				OpenVotingWindow()
			end
			ModifyTextBox({ Id = ScreenAnchors.VotingWindow.Components.VoteTimer.Id, Text = "" .. i })
			
			for j=1,4 do
				ModifyTextBox({ Id = ScreenAnchors.VotingWindow.Components["Vote" .. j].Id, Text = "(" .. votes[j] .. ")" })
			end
			wait(1)
		else
			while not IsInGame() do
				i = i+1
				wait(1)
			end
		end
	end
	voting = 0
	
	---Here is where we find which event had the most votes
	local winner = 0
	for i=1,4 do
		if votes[i] > winner then
			winner = votes[i]
		end
	end
	
	local theevents = {}
	
	--Add all events which match the highest vote (which should be all 4 if no votes were cast)
	for i=1,4 do
		if votes[i] == winner then
			table.insert(theevents,chosentable[i])			
		end
	end

	--Count how many events, generate a random number and select that event
	local finalcount = 0
	for i,data in ipairs(theevents) do
		finalcount = finalcount + 1
	end
	
	local selectedEventIndex = math.random(finalcount)
	--This is our randomly selected event
	local rngevent = theevents[selectedEventIndex]
	
	votes = {0,0,0,0}
	voters = {}
	
	
	while not IsInGame() do
		wait(1)
	end
	
	thread(rngevent.action)
	
	CloseVotingWindow()
	thread(TimeBetweenVote)
end

function TwitchConnect() -- Here we start the twitch integration on a thread
	client = socket.tcp()
	host = "irc.chat.twitch.tv"
	nick = "justinfan1893"
	
	--Connect. Please connect.
	isconnected = client:connect(host, 6667)
	client:settimeout(0, t)
	
	--If we fail a connection
	if isconnected ~= 1 then
		client:close()
		isconnected = 0
	end
	
	
	client:send("NICK " .. nick .. "\r\n")
	
	
	
	local resp, err = nil
	while err == nil do --This is the main loop for recieving data
		resp, err = client:receive()
		if resp ~= nil then
			if string.find(resp,"PRIVMSG") and voting == 1 then -- If we are accepting votes and a twitch message comes in
				local a,b = string.find(resp,"PRIVMSG #" .. TwitchIntegrationConfig.Username .. " :",1,true)
				local incmessage = string.sub(resp,b+1)
				
				local startindex = string.find(resp,':')
				local endindex = string.find(resp,'!')
				local sender = string.sub(resp,startindex + 1, endindex-1)
				
				--If sender has not already made a vote
				if not IsInArray(voters,sender) then
					for i=1,4 do
						if incmessage:find("^" .. i) ~= nil then -- If a 1 (or x emote in future) was found at BEGINNING
							votes[i] = votes[i] + 1
							table.insert(voters,sender)
							break
						end
					end
				end

				--This needs more filtering, we have the message but now we need to extract the first number that is 1-4
			elseif string.find(resp,"tmi.twitch.tv 376") then -- We got the Hello Message... Join a channel
				client:send("JOIN #" .. TwitchIntegrationConfig.Username .."\r\n")
			elseif string.find(resp, "tmi.twitch.tv JOIN") then -- We finished joining a channel.
				channeljoined = 1
				thread(TimeBetweenVote)
			elseif string.find(resp,"PING :tmi.twitch.tv") then -- We reveived a PING, reply back with PONG!
				client:send("PONG :tmi.twitch.tv\r\n")
			end
			
			
		end
		
		if err == 'timeout' then -- We expect timeouts because receive will timeout while waiting for incomming messages. This allows it to be non blocking.
			err = nil
		end
		wait(1)
	end
	client:close()
	isconnected = 0
	channeljoined = 0
end

OnAnyLoad{function(triggerArgs)

	if triggerArgs ~= nil and triggerArgs.name ~= nil then
		croomname = triggerArgs.name
	else
		croomname = "error"
	end

	if isconnected == 0 and CurrentRun ~= nil then
		if CurrentRun.CurrentRoom ~= nil then
			thread(TwitchConnect)
		end
	end
	
	

end}
