CREATE PROCEDURE MY_TEAM.ListStaff_Query

		@arg varchar(20)

AS

BEGIN

	IF (@arg = 'salary')

		SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age,  MY_TEAM.Staff.internal_role, MY_TEAM.Staff.staff_role,
		MY_TEAM.Club_Member.salary, My_TEAM.Staff.internal_id
		FROM MY_TEAM.Staff, MY_TEAM.Club_Member, MY_TEAM.Person 
		WHERE MY_TEAM.Staff.internal_id = MY_TEAM.Club_Member.internal_id AND MY_TEAM.Club_Member.citizen_card = MY_TEAM.Person.citizen_card
		ORDER BY len(MY_TEAM.Club_Member.salary) DESC, MY_TEAM.Club_Member.salary DESC;

	IF (@arg = 'name')
		
		SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age,  MY_TEAM.Staff.internal_role, MY_TEAM.Staff.staff_role,
		MY_TEAM.Club_Member.salary, My_TEAM.Staff.internal_id
		FROM MY_TEAM.Staff, MY_TEAM.Club_Member, MY_TEAM.Person 
		WHERE MY_TEAM.Staff.internal_id = MY_TEAM.Club_Member.internal_id AND MY_TEAM.Club_Member.citizen_card = MY_TEAM.Person.citizen_card
		ORDER BY MY_TEAM.Person.fnome ASC, MY_TEAM.PERSON.lname ASC;

	IF (@arg = 'role')
		SELECT MY_TEAM.Person.fnome, MY_TEAM.Person.lname, MY_TEAM.Person.age,  MY_TEAM.Staff.internal_role, MY_TEAM.Staff.staff_role,
		MY_TEAM.Club_Member.salary, My_TEAM.Staff.internal_id
		FROM MY_TEAM.Staff, MY_TEAM.Club_Member, MY_TEAM.Person 
		WHERE MY_TEAM.Staff.internal_id = MY_TEAM.Club_Member.internal_id AND MY_TEAM.Club_Member.citizen_card = MY_TEAM.Person.citizen_card
		ORDER BY MY_TEAM.Staff.staff_role;
		
END

GO

