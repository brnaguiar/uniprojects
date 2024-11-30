CREATE PROCEDURE MY_TEAM.Staff_StoredProcedure
			
			@operation varchar(20),
			@delValue  int = NULL,

			@fname		     varchar(20) = NULL,
			@lname           varchar(20) = NULL,
			@nationality	 varchar(20) = NULL,
			@age			 tinyint	 = NULL,     
			@citizen_card	 int		 = NULL,         
			@gender			 varchar(20) = NULL,

			@internal_id	 int		 = NULL,
			@internal_role   varchar(20) = NULL,
			@salary		     varchar(20) = NULL,

			@staff_role      varchar(20) = NULL
	

AS

BEGIN

	IF (@operation = 'insert') BEGIN
			INSERT INTO My_TEAM.Person VALUES (@fname, @lname, @nationality, @age, @citizen_card, @gender);
			INSERT INTO MY_TEAM.Club_Member VALUES (@internal_id, @internal_role, @salary, @citizen_card);
			INSERT INTO MY_TEAM.Staff VALUES (@internal_id, @internal_role, @staff_role, @citizen_card);
	END

	IF (@operation = 'delete') BEGIN
			DECLARE @citizen_card1 int;
				SELECT @citizen_card1 = MY_TEAM.Club_Member.citizen_card FROM MY_TEAM.Club_Member WHERE MY_TEAM.Club_Member.internal_id = @delValue;
				DELETE FROM MY_TEAM.Staff WHERE MY_TEAM.Staff.internal_id = @delValue;
				DELETE FROM MY_TEAM.Club_Member WHERE MY_TEAM.Club_Member.internal_id = @delValue;
			    DELETE FROM MY_TEAM.Person WHERE MY_TEAM.Person.citizen_card = @citizen_card1;
	END
END

GO
	