CREATE PROCEDURE MY_TEAM.Staff_StoredProcedure

			@fname		     varchar(20),
			@lname           varchar(20),
			@nationality	 varchar(20),
			@age			 tinyint,     
			@citizen_card	 int,         
			@gender			 varchar(20),

			@internal_id	 int,
			@internal_role   varchar(20),
			@salary		     varchar(20),

			@staff_role      varchar(20)
	

AS

BEGIN

			INSERT INTO My_TEAM.Person VALUES (@fname, @lname, @nationality, @age, @citizen_card, @gender);
			INSERT INTO MY_TEAM.Club_Member VALUES (@internal_id, @internal_role, @salary, @citizen_card);
			INSERT INTO MY_TEAM.Staff VALUES (@internal_id, @internal_role, @staff_role, @citizen_card);


END

GO

 

	