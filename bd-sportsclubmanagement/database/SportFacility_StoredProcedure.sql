
CREATE PROCEDURE MY_TEAM.SportFacility_StoredProcedure


			@iname		varchar(20),
			@inau_date	int,
			@c_cost		int,
			@m_cost		int,
			@infra_id	int,
	
			@capacity	int,
			@sf_type	varchar(20),
			@surface	varchar(20)


AS

BEGIN
			INSERT INTO MY_TEAM.Infrastructure VALUES (@iname, @inau_date, @c_cost, @m_cost, @infra_id);
			INSERT INTO MY_TEAM.Sport_Facility VALUES (@capacity, @sf_type, @surface, @infra_id);

END

GO