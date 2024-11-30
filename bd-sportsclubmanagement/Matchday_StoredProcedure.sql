CREATE PROCEDURE MY_TEAM.Matchday_StoredProcedure
	@arg varchar(20),
	@delValue int = NULL, 
	@mvp_id			int = NULL,
	@matchday_no	int = NULL,
	@matchday_id    int = NULL,
	@matchday_date	int = NULL,
	@scored			int = NULL,
	@conceded		int = NULL,
	@season_id		int = NULL,
	@oteam_id		int = NULL,
	@infra_id		int = NULL,
	@player_id		int = NULL

AS

BEGIN
        IF (@arg = 'insert') BEGIN
			INSERT INTO MY_TEAM.Matchday VALUES (@mvp_id, @matchday_no, @matchday_id, @matchday_date, @scored, @conceded, @season_id, @oteam_id, @infra_id);
			INSERT INTO MY_TEAM.Played_By VALUES ( @player_id, @matchday_id, @oteam_id);
		END

		IF (@arg = 'delete') BEGIN
			DELETE FROM MY_TEAM.Played_By WHERE MY_TEAM.Played_By.matchDay_Id = @delValue;
			DELETE FROM MY_TEAM.Matchday WHERE MY_TEAM.Matchday.matchday_id = @delValue;


		END
END

GO