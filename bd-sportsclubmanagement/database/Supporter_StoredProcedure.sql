CREATE PROCEDURE MY_TEAM.Supporter_StoredProcedure

			@fname		     varchar(20),
			@lname           varchar(20),
			@nationality	 varchar(20),
			@age			 tinyint,     
			@citizen_card	 int,         
			@gender			 varchar(20),

			@supporter_id    int,
			@reserved_seat   int


AS

BEGIN

			INSERT INTO My_TEAM.Person VALUES (@fname, @lname, @nationality, @age, @citizen_card, @gender);
		    INSERT INTO MY_TEAM.Club_Supporter VALUES (@supporter_id, @reserved_seat, @citizen_card);

END

GO

 