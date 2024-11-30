CREATE PROCEDURE MY_TEAM.Player_StoredProcedure

			@operation       varchar(20),
			@delValue         int = NULL,

			@fname		     varchar(20) = NULL,
			@lname           varchar(20) = NULL,
			@nationality	 varchar(20) = NULL,
			@age			 tinyint = NULL,     
			@citizen_card	 int = NULL,         
			@gender			 varchar(20) = NULL,

			@internal_id	 int = NULL,
			@internal_role   varchar(20) = NULL,
			@salary		     varchar(20) = NULL,
			--@citizen_card	 int,

			@height         int = NULL,
			@position       varchar(20) = NULL,
			@sport          varchar(20) = NULL,
			@shirt_number   varchar(20) = NULL,
			@agent          varchar(20) = NULL,
			@market_value   int = NULL,
			@team_status    varchar(20) = NULL
			--@internal_id	int,
			--@internal_role  varchar(20),
			--@citizen_card	int

AS

BEGIN

	IF (@operation = 'insert') BEGIN
				INSERT INTO MY_TEAM.Person VALUES (@fname, @lname, @nationality, @age, @citizen_card, @gender);
				INSERT INTO MY_TEAM.Club_Member VALUES (@internal_id, @internal_role, @salary, @citizen_card);
				INSERT INTO MY_TEAM.Player VALUES (@height, @position, @sport, @shirt_number, @agent, @market_value, @team_status, @internal_id, @internal_role, @citizen_card);
	END

	IF (@operation = 'delete') BEGIN
				DECLARE @citizen_card1 int;
				SELECT @citizen_card1 = MY_TEAM.Club_Member.citizen_card FROM MY_TEAM.Club_Member WHERE MY_TEAM.Club_Member.internal_id = @delValue;
				DELETE FROM MY_TEAM.Played_By WHERE MY_TEAM.Played_By.player_id = @delValue
				DELETE FROM MY_TEAM.Player WHERE MY_TEAM.Player.internal_id = @delValue;
				DELETE FROM MY_TEAM.Club_Member WHERE MY_TEAM.Club_Member.internal_id = @delValue;
			    DELETE FROM MY_TEAM.Person WHERE MY_TEAM.Person.citizen_card = @citizen_card1;
	END 

END

GO
 

	