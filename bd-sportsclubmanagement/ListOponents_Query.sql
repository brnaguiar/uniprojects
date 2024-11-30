CREATE PROCEDURE MY_TEAM.ListOponents_Query

		@arg varchar(20)

AS

BEGIN

	IF (@arg = 'name')
		
		SELECT MY_TEAM.Oponents.oteam_name,  MY_TEAM.Oponents.market_v, MY_TEAM.Oponents.oteam_id
		FROM MY_TEAM.Oponents
		ORDER BY MY_TEAM.Oponents.oteam_name ASC;

	IF (@arg = 'market')
		
		SELECT MY_TEAM.Oponents.oteam_name,  MY_TEAM.Oponents.market_v, MY_TEAM.Oponents.oteam_id
		FROM MY_TEAM.Oponents
		ORDER BY len(MY_TEAM.Oponents.market_v) DESC, MY_TEAM.Oponents.market_v DESC;

END

GO