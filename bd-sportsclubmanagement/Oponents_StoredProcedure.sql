CREATE PROCEDURE MY_TEAM.Oponents_StoredProcedure
	
		@arg varchar(20),
		@delValue int = NULL,
		@market_v	int = NULL,
		@oteam_id	int = NULL,
		@oteam_name	varchar(20) = NULL


AS

BEGIN
        IF (@arg = 'insert') BEGIN
			INSERT INTO MY_TEAM.Oponents VALUES (@market_v, @oteam_id, @oteam_name);
		END

		IF (@arg = 'delete') BEGIN
			DELETE FROM MY_TEAM.Oponents WHERE My_TEAM.Oponents.oteam_id = @delValue;
		END
END

GO



