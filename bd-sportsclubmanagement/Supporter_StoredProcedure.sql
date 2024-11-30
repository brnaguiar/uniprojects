CREATE PROCEDURE MY_TEAM.Supporter_StoredProcedure
			@operation varchar(20),
			@delValue  int = NULL,
			@fname		     varchar(20) = NULL,
			@lname           varchar(20) = NULL,
			@nationality	 varchar(20) = NULL,
			@age			 tinyint = NULL,     
			@citizen_card	 int = NULL,         
			@gender			 varchar(20) = NULL,

			@supporter_id    int = NULL,
			@reserved_seat   int = NULL


AS

BEGIN

		IF (@operation = 'insert') BEGIN
			INSERT INTO My_TEAM.Person VALUES (@fname, @lname, @nationality, @age, @citizen_card, @gender);
		    INSERT INTO MY_TEAM.Club_Supporter VALUES (@supporter_id, @reserved_seat, @citizen_card);
		END 

		IF (@operation = 'delete') BEGIN
				DECLARE @citizen_card1 int;
				SELECT @citizen_card1 = MY_TEAM.Club_Supporter.citizen_card FROM MY_TEAM.Club_Supporter WHERE MY_TEAM.Club_Supporter.supporter_id = @delValue;
				DELETE FROM MY_TEAM.Club_Supporter WHERE MY_TEAM.Club_Supporter.supporter_id = @delValue;
			    DELETE FROM MY_TEAM.Person WHERE MY_TEAM.Person.citizen_card = @citizen_card1;
		END
END

GO

 