
CREATE PROCEDURE MY_TEAM.Matchday_StoredProcedure

	@mvp_id			int,
	@matchday_no		int,
	@matchday_id		int,
	@matchday_date	int,
	@scored			int,
	@conceded		int,
	@season_id		int,
	@oteam_id		int,
	@infra_id		int

AS

BEGIN

			INSERT INTO MY_TEAM.Oponents VALUES (@mvp_id, @matchday_no, @matchday_id, @matchday_date, @scored, @conceded, @season_id, @infra_id);

END

GO