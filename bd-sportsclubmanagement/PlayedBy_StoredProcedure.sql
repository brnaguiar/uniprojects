CREATE PROCEDURE MY_TEAM.PlayedBy_StoredProcedure

	
		@player_id		int,
		@matchday_id    int,
		@oteam_id int

AS

BEGIN
	
		INSERT INTO MY_TEAM.Played_By VALUES ( @player_id, @matchday_id, @oteam_id);
END
GO
