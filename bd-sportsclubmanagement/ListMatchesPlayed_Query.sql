CREATE PROCEDURE MY_TEAM.ListMatchesPlayed_Query

		@arg varchar(20)

AS

BEGIN

	IF (@arg = 'date')
		SELECT MY_TEAM.Matchday.matchday_no, MY_TEAM.Matchday.matchday_date, MY_TEAM.Matchday.scored, MY_TEAM.Matchday.conceded, 
		MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Oponents.oteam_name
		FROM MY_TEAM.Player, MY_TEAM.Matchday, MY_TEAM.Oponents, MY_TEAM.Person, MY_TEAM.Played_By
		WHERE MY_TEAM.Played_By.player_id = MY_TEAM.Player.internal_id AND MY_TEAM.Player.citizen_card = MY_TEAM.Person.citizen_card 
		AND MY_TEAM.Played_By.oteam_id = MY_TEAM.Oponents.oteam_id AND MY_TEAM.Played_By.matchday_id = MY_TEAM.Matchday.matchday_id
		ORDER BY len(MY_TEAM.Matchday.matchday_date) DESC, MY_TEAM.Matchday.matchday_date DESC,
		len(MY_TEAM.Matchday.scored) DESC, MY_TEAM.Matchday.scored DESC,
		len(MY_TEAM.Matchday.conceded) ASC, MY_TEAM.Matchday.conceded ASC;

	IF (@arg = 'nmatch')
		SELECT MY_TEAM.Matchday.matchday_no, MY_TEAM.Matchday.matchday_date, MY_TEAM.Matchday.scored, MY_TEAM.Matchday.conceded, 
		MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Oponents.oteam_name
		FROM MY_TEAM.Player, MY_TEAM.Matchday, MY_TEAM.Oponents, MY_TEAM.Person, MY_TEAM.Played_By
		WHERE MY_TEAM.Played_By.player_id = MY_TEAM.Player.internal_id AND MY_TEAM.Player.citizen_card = MY_TEAM.Person.citizen_card 
		AND MY_TEAM.Played_By.oteam_id = MY_TEAM.Oponents.oteam_id AND MY_TEAM.Played_By.matchday_id = MY_TEAM.Matchday.matchday_id
		ORDER BY len(MY_TEAM.Matchday.matchday_no) ASC, MY_TEAM.Matchday.matchday_no ASC,
		len(MY_TEAM.Matchday.scored) DESC, MY_TEAM.Matchday.scored DESC,
		len(MY_TEAM.Matchday.conceded) ASC, MY_TEAM.Matchday.conceded ASC;

END 

GO

