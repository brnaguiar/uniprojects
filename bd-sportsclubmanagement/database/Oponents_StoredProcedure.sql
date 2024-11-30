
CREATE PROCEDURE MY_TEAM.Oponents_StoredProcedure

		@market_v	int,
		@oteam_id	int,
		@oteam_name	varchar(20),
		@matchday_id	int


AS

BEGIN

			INSERT INTO MY_TEAM.Oponents VALUES (@market_v, @oteam_id, @oteam_name, @matchday_id);

END

GO