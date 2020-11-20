--[[	Config for Twitch Integration	]]--
--	Written By: Kriogenic

-- USAGE INSTRUCTIONS
--		Enter your username in all lowercase in the Username field making sure to keep the " around it
--		Enter the cooldown time between votes in seconds in the TimeBetweenVotes field
--		Enter the time in seconds your viewers have to make their votes in the VotingTime field
--		DO NOT TOUCH ANYTHING ELSE xD
TwitchIntegrationConfig = {
	Username = "kriogenic",
	TimeBetweenVotes = 5,
	VotingTime = 5
}
SaveIgnores["TwitchIntegrationConfig"] = true