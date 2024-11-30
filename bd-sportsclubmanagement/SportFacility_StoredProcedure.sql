
CREATE PROCEDURE MY_TEAM.SportFacility_StoredProcedure

			@operation varchar(20),
			@delValue int = NULL,
			@iname		varchar(20) = NULL,
			@inau_date	int = NULL,
			@c_cost		int = NULL,
			@m_cost		int = NULL,
			@infra_id	int = NULL,
	
			@capacity	int = NULL,
			@sf_type	varchar(20) = NULL,
			@surface	varchar(20) = NULL

                 
AS

BEGIN
		IF (@operation = 'insert') BEGIN
			INSERT INTO MY_TEAM.Infrastructure VALUES (@iname, @inau_date, @c_cost, @m_cost, @infra_id);
			INSERT INTO MY_TEAM.Sport_Facility VALUES (@capacity, @sf_type, @surface, @infra_id);
		END

		IF (@operation = 'delete') BEGIN
				DECLARE @variavel int;
				SELECT @variavel = MY_TEAM.Matchday.matchday_id FROM MY_TEAM.Matchday WHERE MY_TEAM.Matchday.infra_id = @delValue;
				if exists ( select MY_TEAM.Matchday.matchday_id from MY_TEAM.Matchday Where MY_TEAM.Matchday.infra_id = @delValue) begin
					DELETE FROM MY_TEAM.Matchday WHERE MY_TEAM.Matchday.infra_id = @delValue;
				end
				if exists (select MY_TEAM.Played_By.matchday_id from MY_TEAM.Played_By Where MY_TEAM.Played_By.matchday_id = @variavel) begin
					DELETE FROM MY_TEAM.Played_By WHERE MY_TEAM.Played_By.matchday_id = @variavel;
				end
				DELETE FROM MY_TEAM.Sport_Facility WHERE MY_TEAM.Sport_Facility.infra_id = @delValue;
				DELETE FROM MY_TEAM.Infrastructure WHERE MY_TEAM.Infrastructure.infra_id = @delValue;
		END

END

GO