CREATE PROCEDURE MY_TEAM.TeamSeason_StoredProcedure

	@operation       varchar(20),
	@delValue         int = NULL,
	
	@sport_type		varchar(20) = NULL,
	@season_year    int = NULL,
	@n_of_matches	int = NULL,
	@total_scored	int = NULL,
	@total_conceded	int = NULL,
	@season_mvp		int = NULL,
	@season_id		int = NULL


AS

BEGIN
		IF (@operation = 'insert') BEGIN

			INSERT INTO My_TEAM.Team_Season VALUES (@sport_type, @season_year, @n_of_matches, @total_scored, @total_conceded, @season_mvp, @season_id);
		END

		IF (@operation = 'delete') BEGIN
				DELETE FROM MY_TEAM.Team_Season WHERE MY_TEAM.Team_Season.season_id = @delValue;
				DELETE FROM MY_TEAM.Matchday    WHERE MY_TEAM.Matchday.season_id    = @delValue;
		END
END

GO	