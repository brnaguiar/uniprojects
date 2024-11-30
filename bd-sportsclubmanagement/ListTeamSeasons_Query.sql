	CREATE PROCEDURE MY_TEAM.ListTeamSeasons_Query

			@arg varchar(20)

	AS

	BEGIN

		IF (@arg = 'sport')
			SELECT MY_TEAM.Team_Season.sport_type, MY_TEAM.Team_Season.season_year, MY_TEAM.Team_Season.n_of_matches, MY_TEAM.Team_Season.total_scored,
			MY_TEAM.Team_Season.total_conceded, MY_TEAM.Team_Season.season_mvp FROM MY_TEAM.Team_Season ORDER BY My_TEAM.Team_Season.sport_type;

		IF (@arg = 'year')
			SELECT MY_TEAM.Team_Season.sport_type, MY_TEAM.Team_Season.season_year, MY_TEAM.Team_Season.n_of_matches, MY_TEAM.Team_Season.total_scored,
			MY_TEAM.Team_Season.total_conceded, MY_TEAM.Team_Season.season_mvp FROM MY_TEAM.Team_Season 
			ORDER BY len(MY_TEAM.Team_Season.season_year) DESC, MY_TEAM.Team_Season.season_year DESC;

		IF (@arg = 'nmatches')
			SELECT MY_TEAM.Team_Season.sport_type, MY_TEAM.Team_Season.season_year, MY_TEAM.Team_Season.n_of_matches, MY_TEAM.Team_Season.total_scored,
			MY_TEAM.Team_Season.total_conceded, MY_TEAM.Team_Season.season_mvp FROM MY_TEAM.Team_Season 
			ORDER BY len(MY_TEAM.Team_Season.n_of_matches) DESC, MY_TEAM.Team_Season.n_of_matches DESC;

		IF (@arg = 'goals')
			SELECT MY_TEAM.Team_Season.sport_type, MY_TEAM.Team_Season.season_year, MY_TEAM.Team_Season.n_of_matches, MY_TEAM.Team_Season.total_scored,
			MY_TEAM.Team_Season.total_conceded, MY_TEAM.Team_Season.season_mvp FROM MY_TEAM.Team_Season 
			ORDER BY len(MY_TEAM.Team_Season.total_scored) DESC, MY_TEAM.Team_Season.total_scored DESC;

		IF (@arg = 'conceded')
			SELECT MY_TEAM.Team_Season.sport_type, MY_TEAM.Team_Season.season_year, MY_TEAM.Team_Season.n_of_matches, MY_TEAM.Team_Season.total_scored,
			MY_TEAM.Team_Season.total_conceded, MY_TEAM.Team_Season.season_mvp FROM MY_TEAM.Team_Season 
			ORDER BY len(MY_TEAM.Team_Season.total_conceded) ASC, MY_TEAM.Team_Season.total_conceded ASC;

	END

	GO