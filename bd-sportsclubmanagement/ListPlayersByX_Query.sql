CREATE PROCEDURE MY_TEAM.ListPlayersByX_Query

		@arg varchar(20)

AS

BEGIN

IF (@arg = 'salary')

SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age, MY_TEAM.Person.nationality, MY_TEAM.Player.sport, MY_TEAM.Player.position, MY_TEAM.Player.shirt_number,
MY_TEAM.Player.team_status, MY_TEAM.Club_Member.salary, MY_TEAM.Player.internal_id
FROM MY_TEAM.Player, MY_TEAM.Club_Member, MY_TEAM.Person 
WHERE MY_TEAM.Player.internal_id = MY_TEAM.Club_Member.internal_id AND MY_TEAM.Club_Member.citizen_card = MY_TEAM.Person.citizen_card
ORDER BY len(MY_TEAM.Club_Member.salary) DESC, MY_TEAM.Club_Member.salary DESC;

IF (@arg = 'name')

SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age, MY_TEAM.Person.nationality, MY_TEAM.Player.sport, MY_TEAM.Player.position, MY_TEAM.Player.shirt_number,
MY_TEAM.Player.team_status, MY_TEAM.Club_Member.salary, MY_TEAM.Player.internal_id
FROM MY_TEAM.Player, MY_TEAM.Club_Member, MY_TEAM.Person 
WHERE MY_TEAM.Player.internal_id = MY_TEAM.Club_Member.internal_id AND MY_TEAM.Club_Member.citizen_card = MY_TEAM.Person.citizen_card
ORDER BY MY_TEAM.Person.fnome ASC, MY_TEAM.PERSON.lname ASC;


IF (@arg = 'age')

SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age, MY_TEAM.Person.nationality, MY_TEAM.Player.sport, MY_TEAM.Player.position, MY_TEAM.Player.shirt_number,
MY_TEAM.Player.team_status, MY_TEAM.Club_Member.salary, MY_TEAM.Player.internal_id
FROM MY_TEAM.Player, MY_TEAM.Club_Member, MY_TEAM.Person 
WHERE MY_TEAM.Player.internal_id = MY_TEAM.Club_Member.internal_id AND MY_TEAM.Club_Member.citizen_card = MY_TEAM.Person.citizen_card
ORDER BY len(MY_TEAM.Person.age) ASC, MY_TEAM.PERSON.age ASC;


IF (@arg = 'nationallity')

SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age, MY_TEAM.Person.nationality, MY_TEAM.Player.sport, MY_TEAM.Player.position, MY_TEAM.Player.shirt_number,
MY_TEAM.Player.team_status, MY_TEAM.Club_Member.salary, MY_TEAM.Player.internal_id
FROM MY_TEAM.Player, MY_TEAM.Club_Member, MY_TEAM.Person 
WHERE MY_TEAM.Player.internal_id = MY_TEAM.Club_Member.internal_id AND MY_TEAM.Club_Member.citizen_card = MY_TEAM.Person.citizen_card
ORDER BY MY_TEAM.PERSON.nationality ASC;

IF (@arg = 'sport')

SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age, MY_TEAM.Person.nationality, MY_TEAM.Player.sport, MY_TEAM.Player.position, MY_TEAM.Player.shirt_number,
MY_TEAM.Player.team_status, MY_TEAM.Club_Member.salary, MY_TEAM.Player.internal_id
FROM MY_TEAM.Player, MY_TEAM.Club_Member, MY_TEAM.Person 
WHERE MY_TEAM.Player.internal_id = MY_TEAM.Club_Member.internal_id AND MY_TEAM.Club_Member.citizen_card = MY_TEAM.Person.citizen_card
ORDER BY MY_TEAM.Player.sport ASC;



END 

GO
