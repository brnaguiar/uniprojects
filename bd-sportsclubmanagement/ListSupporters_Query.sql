CREATE PROCEDURE MY_TEAM.ListSupporters_Query

		@arg varchar(20)

AS

BEGIN
	
	IF (@arg = 'name')	
		SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age, MY_TEAM.Person.gender, MY_TEAM.Club_Supporter.supporter_id,  MY_TEAM.Club_Supporter.reserved_seat
		FROM MY_TEAM.Person, MY_TEAM.Club_Supporter 
		WHERE MY_TEAM.Person.citizen_card  = MY_TEAM.Club_Supporter.citizen_card
		ORDER BY MY_TEAM.Person.fnome ASC, MY_TEAM.Person.lname ASC;

	IF (@arg = 'age') 
		SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age, MY_TEAM.Person.gender, MY_TEAM.Club_Supporter.supporter_id,  MY_TEAM.Club_Supporter.reserved_seat
		FROM MY_TEAM.Person, MY_TEAM.Club_Supporter 
		WHERE MY_TEAM.Person.citizen_card  = MY_TEAM.Club_Supporter.citizen_card
		ORDER BY len(MY_TEAM.Person.age) ASC, MY_TEAM.Person.age ASC;

	IF (@arg = 'gender') 
		SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age, MY_TEAM.Person.gender, MY_TEAM.Club_Supporter.supporter_id,  MY_TEAM.Club_Supporter.reserved_seat
		FROM MY_TEAM.Person, MY_TEAM.Club_Supporter 
		WHERE MY_TEAM.Person.citizen_card  = MY_TEAM.Club_Supporter.citizen_card
		ORDER BY MY_TEAM.Person.gender;

	IF (@arg = 'seat') 
		SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age, MY_TEAM.Person.gender, MY_TEAM.Club_Supporter.supporter_id,  MY_TEAM.Club_Supporter.reserved_seat
		FROM MY_TEAM.Person, MY_TEAM.Club_Supporter 
		WHERE MY_TEAM.Person.citizen_card  = MY_TEAM.Club_Supporter.citizen_card
		ORDER BY len(MY_TEAM.Club_Supporter.reserved_seat) ASC, MY_TEAM.Club_Supporter.reserved_seat ASC;

END
GO