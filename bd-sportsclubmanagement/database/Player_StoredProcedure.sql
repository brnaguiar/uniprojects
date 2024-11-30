CREATE PROCEDURE MY_TEAM.Player_StoredProcedure

			@fname		     varchar(20),
			@lname           varchar(20),
			@nationality	 varchar(20),
			@age			 tinyint,     
			@citizen_card	 int,         
			@gender			 varchar(20),

			@internal_id	 int,
			@internal_role   varchar(20),
			@salary		     varchar(20),
			--@citizen_card	 int,

			@height         int,
			@position       varchar(20),
			@sport          varchar(20),
			@shirt_number   varchar(20),
			@agent          varchar(20),
			@market_value   int,
			@team_status    varchar(20)
			--@internal_id	int,
			--@internal_role  varchar(20),
			--@citizen_card	int

AS

BEGIN

			INSERT INTO My_TEAM.Person VALUES (@fname, @lname, @nationality, @age, @citizen_card, @gender);
			INSERT INTO MY_TEAM.Club_Member VALUES (@internal_id, @internal_role, @salary, @citizen_card);
			INSERT INTO MY_TEAM.Player VALUES (@height, @position, @sport, @shirt_number, @agent, @market_value, @team_status, @internal_id, @internal_role, @citizen_card);

END

GO

 

	