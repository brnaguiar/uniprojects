CREATE PROCEDURE MY_TEAM.ListSportFacilities_Query

		@arg varchar(20)

AS

BEGIN

	IF (@arg = 'name')
		
		SELECT MY_TEAM.Infrastructure.iname, MY_TEAM.Sport_Facility.capacity, 
		MY_TEAM.Sport_Facility.sf_type, MY_TEAM.Sport_Facility.surface, MY_TEAM.Infrastructure.m_cost, MY_TEAM.Infrastructure.c_cost, 
		MY_TEAM.Infrastructure.infra_id
		FROM MY_TEAM.Infrastructure, MY_TEAM.Sport_Facility
		WHERE MY_TEAM.Sport_Facility.infra_id = MY_TEAM.Sport_Facility.infra_id
		ORDER BY MY_TEAM.Infrastructure.iname ASC;

	IF (@arg = 'type')
		
		SELECT MY_TEAM.Infrastructure.iname, MY_TEAM.Sport_Facility.capacity, 
		MY_TEAM.Sport_Facility.sf_type, MY_TEAM.Sport_Facility.surface, MY_TEAM.Infrastructure.m_cost, MY_TEAM.Infrastructure.c_cost, 
		MY_TEAM.Infrastructure.infra_id
		FROM MY_TEAM.Infrastructure, MY_TEAM.Sport_Facility
		WHERE MY_TEAM.Sport_Facility.infra_id = MY_TEAM.Sport_Facility.infra_id
		ORDER BY MY_TEAM.Sport_Facility.sf_type ASC;

		IF (@arg = 'mcost')
		
		SELECT MY_TEAM.Infrastructure.iname, MY_TEAM.Sport_Facility.capacity, 
		MY_TEAM.Sport_Facility.sf_type, MY_TEAM.Sport_Facility.surface, MY_TEAM.Infrastructure.m_cost, MY_TEAM.Infrastructure.c_cost, 
		MY_TEAM.Infrastructure.infra_id
		FROM MY_TEAM.Infrastructure, MY_TEAM.Sport_Facility
		WHERE MY_TEAM.Sport_Facility.infra_id = MY_TEAM.Sport_Facility.infra_id
		ORDER BY MY_TEAM.Infrastructure.m_cost ASC;

		IF (@arg = 'ccost')
		
			SELECT MY_TEAM.Infrastructure.iname, MY_TEAM.Sport_Facility.capacity, 
			MY_TEAM.Sport_Facility.sf_type, MY_TEAM.Sport_Facility.surface, MY_TEAM.Infrastructure.m_cost, MY_TEAM.Infrastructure.c_cost, 
			MY_TEAM.Infrastructure.infra_id
			FROM MY_TEAM.Infrastructure, MY_TEAM.Sport_Facility
			WHERE MY_TEAM.Sport_Facility.infra_id = MY_TEAM.Sport_Facility.infra_id
			ORDER BY MY_TEAM.Infrastructure.c_cost ASC;

		IF (@arg = 'capacity')
		
			SELECT MY_TEAM.Infrastructure.iname, MY_TEAM.Sport_Facility.capacity, 
			MY_TEAM.Sport_Facility.sf_type, MY_TEAM.Sport_Facility.surface, MY_TEAM.Infrastructure.m_cost, MY_TEAM.Infrastructure.c_cost, 
			MY_TEAM.Infrastructure.infra_id
			FROM MY_TEAM.Infrastructure, MY_TEAM.Sport_Facility
			WHERE MY_TEAM.Sport_Facility.infra_id = MY_TEAM.Sport_Facility.infra_id
			ORDER BY len(MY_TEAM.Sport_Facility.capacity) DESC, MY_TEAM.Sport_Facility.capacity DESC;
END

GO