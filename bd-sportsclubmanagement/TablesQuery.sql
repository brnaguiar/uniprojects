


CREATE SCHEMA MY_TEAM;


CREATE TABLE MY_TEAM.Person(
	fnome			varchar(20) not null,
	lname           varchar(20) not null,
	nationality		varchar(20) not null,
	age				tinyint     not null,
	citizen_card	int         not null,
	gender			varchar(20) not null,
	PRIMARY KEY (citizen_card)
);

CREATE TABLE MY_TEAM.Club_Member(
    internal_id	    int         not null,
	internal_role   varchar(20) not null,
	salary		    varchar(20),
	citizen_card	int,
	PRIMARY KEY (internal_id, citizen_card, internal_role),
	FOREIGN KEY (citizen_card) REFERENCES MY_TEAM.Person(citizen_card)
);

CREATE TABLE MY_TEAM.Club_Supporter(
    supporter_id    int not null,
	reserved_seat   int,
	citizen_card	int not null,
	PRIMARY KEY (supporter_id, citizen_card),
	FOREIGN KEY (citizen_card) REFERENCES MY_TEAM.Person(citizen_card)
);

CREATE TABLE MY_TEAM.Staff(
    internal_id	    int         not null,
	internal_role   varchar(20) not null,
	staff_role      varchar(20) not null,
	citizen_card	int,
	PRIMARY KEY (internal_id, citizen_card),
	FOREIGN KEY (internal_id, citizen_card, internal_role) REFERENCES MY_TEAM.Club_Member(internal_id, citizen_card, internal_role)
);

CREATE TABLE MY_TEAM.Player(
	height         int,
	position       varchar(20),
	sport          varchar(20),
	shirt_number   varchar(20),
	agent          varchar(20),
	market_value   int,
	team_status    varchar(20),
	internal_id	    int         not null,
	internal_role   varchar(20) not null,
	citizen_card	int,
	PRIMARY KEY (internal_id),
	FOREIGN KEY (internal_id, citizen_card, internal_role) REFERENCES MY_TEAM.Club_Member(internal_id, citizen_card, internal_role)
);



CREATE TABLE MY_TEAM.Team_Season(
	sport_type		varchar(20),
	season_year		int,
	n_of_matches	int,
	total_scored	int,
	total_conceded	int,
	season_mvp		int,
	season_id		int,
	PRIMARY KEY(season_id)); 


	CREATE TABLE MY_TEAM.Oponents(
	market_v	int,
	oteam_id	int,
	oteam_name	varchar(20),
	PRIMARY KEY (oteam_id));


CREATE TABLE MY_TEAM.Infrastructure(
	iname		varchar(20),
	inau_date	int,
	c_cost		int,
	m_cost		int,
	infra_id	int,
	PRIMARY KEY(infra_id));

CREATE TABLE MY_TEAM.Sport_Facility(
	capacity	int,
	sf_type		varchar(20),
	surface		varchar(20),
	infra_id	int,

	PRIMARY KEY(infra_id),
	FOREIGN KEY(infra_id) REFERENCES MY_TEAM.Infrastructure(infra_id));


CREATE TABLE MY_TEAM.Matchday(
	mvp_id			int,
	matchday_no		int,
	matchday_id		int,
	matchday_date	int,
	scored			int,
	conceded		int,
	season_id		int,
	oteam_id		int,
	infra_id		int,
	PRIMARY KEY (matchday_id),
	FOREIGN KEY (season_id) REFERENCES MY_TEAM.Team_Season(season_id),
	FOREIGN KEY (oteam_id) REFERENCES MY_TEAM.Oponents(oteam_id),
	FOREIGN KEY (infra_id) REFERENCES MY_TEAM.Sport_Facility(infra_id));


CREATE TABLE MY_TEAM.Played_By(	
	player_id		int,
	matchday_id		int,
	oteam_id        int,

	PRIMARY KEY(player_id, matchday_id),
	FOREIGN KEY (player_id) REFERENCES MY_TEAM.Player(internal_id),
	FOREIGN KEY (matchday_id) REFERENCES MY_TEAM.Matchday(matchday_id)
);