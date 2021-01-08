--[[	Config for Twitch Integration	]]--
--	Written By: Kriogenic

-- USAGE INSTRUCTIONS
--		Enter your username in all lowercase in the Username field making sure to keep the " around it
--		Enter the cooldown time between votes in seconds in the TimeBetweenVotes field
--		Enter the time in seconds your viewers have to make their votes in the VotingTime field
--		DO NOT TOUCH ANYTHING ELSE xD
TwitchIntegrationConfig = {
	Username = "0lrevolution",
	TimeBetweenVotes = 1,
	VotingTime = 500,
	OfferedChoices = 6,
	UISize = 3, -- 1 = small, 2 = medium, 3 = large
	NextVoteTimerTextColor = Color.Yellow,
	VoteTimerTextColor = Color.White,
	ChoiceTextColor = Color.Yellow,
}
SaveIgnores["TwitchIntegrationConfig"] = true