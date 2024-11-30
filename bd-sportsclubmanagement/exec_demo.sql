EXEC MY_TEAM.Player_StoredProcedure 'Rodrigo', 'Carvalho', 'Espanha', 20, 2141243, 'Male', 12345, 'Player', 120000, 190, 'PL', 'Andebol', 14,'Manel', 1000000,'transferable';

exec MY_TEAM.Player_StoredProcedure 'delete', 12344

exec MY_TEAM.Player_StoredProcedure 'insert', null ,'José', 'Fernando', 'Portuguese', 21, 123124124, 'Male', 12344, 'Player', 1241411, 183, 'ST', 'Football', 12,'Jorge Mendes', 1211131,'Rotation'
exec MY_TEAM.Player_StoredProcedure 'insert', null, 'armindo', 'costa', 'Portugal', 22, 1777, 'Masculino', 657, 'Player', 92739, 123, 'Medio Central', 'Futebol', 12, 'Jorge, Mendes', 48589, 'Leader'
exec MY_TEAM.ListPlayersByX_Query 'salary'
exec MY_TEAM.ListPlayersByX_Query 'name'
exec MY_TEAM.ListPlayersByX_Query 'nationality'
exec  MY_TEAM.ListPlayersByX_Query 'sport'
exec MY_TEAM.ListTeamSeasons_Query 'conceded'
exec MY_TEAM.ListMatchesPlayed_Query 'date'
exec MY_TEAM.ListStaff_Query 'role'
exec MY_TEAM.ListSportFacilities_Query 'name' 




exec MY_TEAM.TeamSeason_StoredProcedure 'insert', null, 'matraquilhos', 1992, 49, 2, 20000, 43221, 123456
exec MY_TEAM.TeamSeason_StoredProcedure 'insert', null, 'andebol', 2004, 20, 90, 45, 12345, 9090
exec MY_TEAM.TeamSeason_StoredProcedure 'delete', 123456

exec MY_TEAM.Supporter_StoredProcedure 'insert', null, 'Jose', 'Alfredo', 'Portuguese', 30, 4040404, 'Male', 1030303, 4;
exec MY_TEAM.Supporter_StoredProcedure 'insert', null, 'Fernando', 'Madureira', 'Portuguese', 32, 343434, 'Male', 1, 10;
exec MY_TEAM.Supporter_StoredProcedure 'insert', null, 'Alberta', 'Mancido', 'Angolan', 24, 434343, 'Female', 200, 11
exec MY_TEAM.Supporter_StoredProcedure 'delete', 1030303

exec MY_TEAM.Staff_StoredProcedure 'insert', null, 'Jorge Nuno', 'Pinto Da Costa', 'Portuguese', 82, 56602, 'Male', 1, 'Staff', 1000000, 'President'
exec MY_TEAM.Staff_StoredProcedure 'insert', null, 'Bruno', 'Manel', 'Portuguese', 42, 56603, 'Male', 43, 'Staff', 10000, 'Boss'
exec MY_TEAM.Staff_StoredProcedure 'delete', 43

exec MY_TEAM.SportFacility_StoredProcedure 'insert', null, 'Estadio do Dragao', 2003, 99000000, 100000, 8989, 50000, 'Stadium', 'Grass'
exec MY_TEAM.SportFacility_StoredProcedure 'insert', null, 'Estadio do Dragao', 2003, 99000000, 100000, 8888, 50000, 'Stadium', 'Grass'
exec MY_TEAM.SportFacility_StoredProcedure 'delete', 8888

exec MY_TEAM.Oponents_StoredProcedure 'insert', null, 2, 1010, 'Benfica'
exec MY_TEAM.Oponents_StoredProcedure 'delete', 1010

exec MY_TEAM.Matchday_StoredProcedure 'insert', null, 2, 2, 7070, 01052016, 2, 1, 123456, 1010, 8989, 12344
exec MY_TEAM.Matchday_StoredProcedure 'insert', null, 123, 3, 7171, 01052017, 4, 2, 123456, 1010, 8989, 54321
exec MY_TEAM.Matchday_StoredProcedure 'delete', 7070

exec MY_TEAM.PlayedBy_StoredProcedure 12345, 2, 2
exec MY_TEAM.PlayedBy_StoredProcedure 12344, 2, 2
exec MY_TEAM.PlayedBy_StoredProcedure 123, 3, 2
exec MY_TEAM.PlayedBy_StoredProcedure 54321, 3, 2