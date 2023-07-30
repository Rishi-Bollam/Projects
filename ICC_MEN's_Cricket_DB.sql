create database ICC;
use ICC;
create table players(
                    	player_id varchar(7) not null, 
			player_name varchar(20) not null ,
			DoB date ,
			age integer,
        	        country varchar(20),
                    	primary key (player_id)
                    );
		    insert into players values('IND0001','KOHLI','1988-11-5',33,'India');
                    insert into players values('AUS0001','FINCH','1986-11-17',35,'Australia');
                    insert into players values('NZ0001','WILLIAMSON','1990-8-8',31,'Newzealand');
                    insert into players values('ENG0001','MORGAN','1986-9-10',35,'England');
                    insert into players values('SA0001','FAfDUPLESIE','1984-7-13',37,'South Africa');
		    insert into players values('SL0001','JAYAVARDHENE','1977-5-27',44,'Sri Lanka');
		    insert into players values('PAK0001','BABAR AZAM','1994-10-15',27,'Pakistan');
                    insert into players values('IND0002','BHUVANESHWAR','1990-2-5',32,'India');
                    insert into players values('AUS0002','STARC','1990-1-30',32,'Australia');
                    insert into players values('NZ0002','BOULT','1989-7-22',32,'Newzealand');
                    insert into players values('ENG0002','ARCHER','1995-4-1',27,'England');
                    insert into players values('SA0002','RABADA','1995-5-25',27,'South Africa');
		    insert into players values('SL0002','MALINGA','1983-8-28',38,'Sri Lanka');
                    insert into players values('PAK0002','AFRIDI','1980-3-1',42,'Pakistan');
                    insert into players values('IND0003','JEDAJA','1988-12-6',33,'India');
                    insert into players values('AUS0003','CUMMINS','1993-5-8',29,'Australia');
                    insert into players values('NZ0003','GRANDHOME','1986-7-22',35,'Newzealand');
                    insert into players values('ENG0003','SAMCURRAN','1998-6-3',24,'England');
                    insert into players values('SA0003','NGIDI','1996-3-29',26,'South Africa');
		    insert into players values('SL0003','HASARANGA','1997-4-29',25,'Sri Lanka');
		    insert into players values('PAK0003','SHOAIB MALIK','1982-2-1',40,'Pakistan');
                    insert into players values('IND0004','RISHABH','1997-4-10',24, 'India');
                    insert into players values('AUS0004','CAREY','1991-8-27',30,'Australia');
                    insert into players values('NZ0004','McCullum','1981-9-27',40,'NewZealand');
		    insert into players values('SL0004','SANGAKARA','1977-10-27',44,'Sri Lanka');
create table batsmen(
                    player_id char(7) primary key,
                    TEST_strike_rate float,
                    ODI_strike_rate float,
                    T20_strike_rate float,
		    TEST_average float,
                    ODI_average float,
                    T20_average float,
                    toatl_runs integer(8),
                    TEST_ranking integer(4),
		    ODI_ranking integer(4),
		    T20_ranking integer(4),
                    best integer(3),
                    foreign key (player_id) references players (player_id)
		    );
                    insert into batsmen values('IND0001',55.7,92.9,137.7,49.5,57.9,50.1,3674832,4,2,1,183);
		    insert into batsmen values('NZ0001',51.2,81.8,124.0,52.6,47.5,32.6,2345452,1,2,3,120);
                    insert into batsmen values('AUS0001',45.0,88.0,145.3,27.8,40.4,35.2,5674332,2,3,3,100);
                    insert into batsmen values('ENG0001',64.1,86.0,149.2,24.7,28.2,13.8,1234232,3,5,5,200);
                    insert into batsmen values('PAK0001',53.5,90.2,129.4,47.3,59.2,45.5,956234,6,4,2,178);
                    insert into batsmen values('SL0001',51.5,79.0,133.2,49.8,33.4,39.8,979839,50,14,22,121);
create table bowler(
                    player_id char(7) primary key,
		    wickets integer(5),
	            TEST_ranking integer(3),
		    ODI_ranking integer(3),
                    T20_ranking integer(4),
                    TEST_average float,
                    ODI_average float,
                    T20_average float,
                    economy float,
                    style char(4),
                    best char(8),
                    foreign key (player_id) references players (player_id)
                    );	
                    insert into bowler values('IND0002',6356,2,3,4,26.09,35.11,23.31,5.33,'seam','6 for 40');
                    insert into bowler values('NZ0002',4567,6,9,1,27.5,25.2,21.7,6.37,'seam','5 for 50');
                    insert into bowler values('SA0002',1276,5,6,5,22.4,27.7,26.1,8.99,'spin','5 for 67');
                    insert into bowler values('PAK0002',5345,6,6,5,24.4,29.7,22.1,6.87,'spin','5 for 42');
                    insert into bowler values('SL0002',6357,59,62,54,27.9,22.7,26.1,8.67,'seam','7 for 59');
                    
create table allrounder(
                        player_id char(7) primary key,
			ranking integer(5),
			toatl_runs integer(8),
                        TEST_strike_rate float,
                        ODI_strike_rate float,
                        T20_strike_rate float,
			TEST_batting_average float,
                        ODI_batting_average float,
                        T20_batting_average float,
			TEST_batting_ranking integer(4),
			ODI_batting_ranking integer(4),
			T20_batting_ranking integer(4),
			best_batting integer(3),
			wickets integer(5),
			TEST_bowling_ranking integer(3),
			ODI_bowling_ranking integer(3),
			T20_bowling_ranking integer(4),
                        TEST_average float,
                        ODI_average float,
                        T20_average float,
			economy float,
			style char(4),
			best_bowling char(8),
                        foreign key (player_id) references players (player_id)
                        );
                        insert into allrounder values('IND0003',2,5363,59.5,86.7,128.5,36.6,32.5,23.7,10,7,5,175,453,11,6,8,24.71,37.36,27.91,7.56,'spin','7 for 48');
                        insert into allrounder values('ENG0003',4,3186,64.12,85.97,149.23,24.69,28.2,13.85,8,9,15,94,202,2,3,4,35.51,36.50,25.56,7.30,'seam','7 for 58');
			insert into allrounder values('NZ0003',7,6592,80.44,106.15,138.35,38.7,26.5,15.78,18,7,22,120,205,15,22,17,32.95,41.00,38.41,6.5,'seam','6 for 24');
                        insert into allrounder values('AUS0003',1,1214,40.81,73.97,130.76,16.92,10.12,7.55,82,245,41,52,63,4,12,8,21.66,28.04,22.77,5.6,'seam','9 for 62');
                        insert into allrounder values('SL0003',8,2323,44.81,83.88,149.54,18.55,18.22,8.45,76,133,74,32,42,5,17,9,23.78,29.94,21.67,5.4,'seam','8 for 89');
                        insert into allrounder values('PAK0003',15,6592,64.12,85.97,130.76,16.92,23.7,7.55,67,145,8,19,62,61,32,3,23.78,23.94,22.67,6.4,'seam','8 for 93');
                        
create table batsmen_vs_bowler(
                        	batsmen_id varchar(7) not null,
				bowler_id varchar(7) not null,
				matches_played int(3),
				runs_scored int(3),
				dismissals int(2),
				foreign key (batsmen_id) references players (player_id),
				foreign key (bowler_id) references players (player_id)
                        	);
			insert into batsmen_vs_bowler values('AUS0001','ENG0002',20,97,4);
                        insert into batsmen_vs_bowler values('AUS0001','SA0003',19,123,0);
                        insert into batsmen_vs_bowler values('SL0003','IND0002',18,47,5);
                        insert into batsmen_vs_bowler values('ENG0001','IND0002',17,23,4);
                        insert into batsmen_vs_bowler values('ENG0003','NZ0003',24,89,1);
                        insert into batsmen_vs_bowler values('ENG0003','SA0002',26,189,4);
                        insert into batsmen_vs_bowler values('IND0001','AUS0003',19,123,1);
                        insert into batsmen_vs_bowler values('IND0001','ENG0002',11,148,2);
                        insert into batsmen_vs_bowler values('IND0003','NZ0003',15,176,8);
                        insert into batsmen_vs_bowler values('NZ00001','AUS0002',19,100,0);
                        insert into batsmen_vs_bowler values('NZ0001','AUS0003',8,121,1);
                        insert into batsmen_vs_bowler values('NZ0003','ENG0002',7,144,6);
                        insert into batsmen_vs_bowler values('SA0001','ENG0003',12,97,5);
                        insert into batsmen_vs_bowler values('PAK0001','SL0003',20,133,2);
                        
create table keeper(
                   keeper_id varchar(7) primary key,
                   ranking varchar(3),
                   catches integer(4),
                   stumpings integer(4),
                   foreign key (keeper_id) references players (player_id)
                   );
		   insert into keeper values('IND0004',3,120,75);
		   insert into keeper values('AUS0004',7,156,87);
		   insert into keeper values('NZ0004',9,170,68);
                   insert into keeper values('SL0004',5,188,103);
                   
create table ranking(
                    country varchar(20),
		    game_type varchar(4),
                    former_captain_id varchar(7),
		    country_rank integer(2),
                    batsman_top_rank integer(3),
                    bowler_top_rank integer(3),
                    allrounder_top_rank integer(3),
                    primary key(country,game_type),
                    foreign key (former_captain_id) references players(player_id)
                    );
		    insert into ranking values('INDIA','TEST','IND0001',2,2,6,1);
                    insert into ranking values('AUSTRALIA','TEST','AUS0001',4,1,8,2);
                    insert into ranking values('ENGLAND','TEST','ENG0003',3,3,8,3);
		    insert into ranking values('NEWZLAND','TEST','NZ0001',1,4,1,7);
                    insert into ranking values('SOUTHAFRICA','TEST','SA0001',5,5,8,6);
                    insert into ranking values('PAKISTAN','TEST','PAK0001',3,7,3,4);
                    insert into ranking values('SRI LANKA','TEST','SL0001',6,8,5,7);
                    insert into ranking values('INDIA','ODI','IND0001',2,3,6,2);
                    insert into ranking values('AUSTRALIA','ODI','AUS0002',4,6,8,3);
                    insert into ranking values('ENGLAND','ODI','ENG0001',3,23,8,4);
                    insert into ranking values('NEWZLAND','ODI','NZ0001',1,7,1,8);
                    insert into ranking values('SOUTHAFRICA','ODI','SA0001',5,8,8,6);
                    insert into ranking values('PAKISTAN','ODI','PAK0001',5,28,5,8);
                    insert into ranking values('SRI LANKA','ODI','SL0001',3,22,9,9);
                    insert into ranking values('INDIA','T20','IND0001',2,2,6,1);
                    insert into ranking values('AUSTRALIA','T20','AUS0003',4,1,8,2);
                    insert into ranking values('ENGLAND','T20','ENG0001',3,3,8,3);
                    insert into ranking values('NEWZLAND','T20','NZ0001',1,4,1,7);
                    insert into ranking values('SOUTHAFRICA','T20','SA0001',5,5,8,6);
                    insert into ranking values('PAKISTAN','T20','PAK0002',2,7,3,12);
                    insert into ranking values('SRI LANKA','T20','SL0002',1,9,8,21);
                    

create table venue_scores(	
			venue_name varchar(30) not null,
			game_type varchar(4),
			least_score varchar(10),
			highest_score varchar(10),
			least_defend varchar(10),
			highest_chase varchar(10),
			boundaries integer(4),
			primary key (venue_name,game_type)
			);
                    insert into venue_scores values('RAJIVGANDHI','ODI','100 by BAN','350 by IND','127 by AUS','342 by IND',89067);
		    insert into venue_scores values('RAJIVGANDHI','TEST','35 by IND','600 by IND','180 by IND','360 by IND',44567);
		    insert into venue_scores values('RAJIVGANDHI','T20','29 by ENG','298 by IND','129 by AUS','198 by SA',44567);
		    insert into venue_scores values('GABBA','TEST','36 by IND','726 by IND','145 by AUS','389 by IND',89067);
		    insert into venue_scores values('GABBA','T20','60 by AUS','196 by AUS','167 by AUS','193 by IND',37689);
                    insert into venue_scores values('LORDS','ODI','100 by NZ','483 by ENG','187 by ENG','342 by ENG',12768);
		    insert into venue_scores values('LORDS','TEST','123 by IND','587 by AUS','187 by NZ','356 by ENG',87956);
		    insert into venue_scores values('LORDS','T20','56 by SA' ,'187 by ENG','157 by PAK','167 by ENG',128796);
		    insert into venue_scores values('WANKADE','ODI','145 by ENG','344 by IND','177 by IND','242 by IND',89067);
                    
create table umpire(
                    umpire_id varchar(7) primary key,
		    umpire_name varchar(15) not null,
                    age int(2),
                    Number_of_matches int(3)
                    );
                    insert into umpire values('UMP1111','srinivas',34,47);
                    insert into umpire values('UMP2222','maichel',45,88);
                    insert into umpire values('UMP4444','srinivas',27,29);
                    insert into umpire values('UMP3333','lynn',50,180);
                    
create table venue_result( 
			venue_name varchar(30),
			match_date date,
			game_type varchar(4),
			team_1 varchar(15),
			team_2 varchar(15),
			result varchar(50),
                        man_of_the_match varchar(7),
			umpire_by varchar(7),
			primary key (venue_name,match_date),
			foreign key (venue_name) references venue_scores(venue_name),
			foreign key (umpire_by) references umpire(umpire_id)
			);
			insert into venue_result values('RAJIVGANDHI','2007-2-13','test','INDIA','ENGLAND','India won by 10 wickets','IND0001','UMP1111');
			insert into venue_result values('GABBA','2007-2-13','ODI','AUSTRALIA','SOUTH AFRICA','Australia won by 45 runs','AUS0002','UMP2222');
			insert into venue_result values('WANKADE','2009-12-30','T20','SRILANKA','INDIA','Srilanka won by 3 runs','SL0001','UMP1111');
                        insert into venue_result values('LORDS', '2012-12-04','ODI','INDIA','ENGLAND','India won by 5 wickets','IND0001','UMP3333');
                        
create table council_info(
			council_name varchar(5) primary key,
			controlling_country varchar(20),
			head varchar(20),
			foreign key (controlling_country) references ranking(country)
			);
                        insert into council_info values('BCCI','INDIA','gangully');
			insert into council_info values('CA','AUSTRALIA','eddings');
			insert into council_info values('ECB','ENGLAND','Watmore');
			insert into council_info values('NZC','NEWZLAND','martin snedden');
			insert into council_info values('CAS','SOUTHAFRICA','naido');
                        insert into council_info values('SLC', 'SRI LANKA', 'shammi silva');
                        insert into council_info values('PCB','PAKISTAN','ramiz raja');
                        
create table played_players(
			    match_date date,
                            country_id varchar(7),
			    player_id varchar(7),
                            runs_scored varchar(20),
                            wickets_taken varchar(20),
                            catches_taken integer,
                            runs_saved integer,
                            foreign key(match_date) references venue_result(match_date),
                            foreign key (player_id) references  players(player_id),
                            foreign key(country_id) references council_info(council_name)
                            );
                            insert into played_players values ('2012-12-04','BCCI','IND0001','183 in 150 balls','0 in 0 overs',2,20);
                            insert into played_players values ('2012-12-04','BCCI','IND0003','67 in 40 balls','0 in 0 overs',1,15);
			    insert into played_players values ('2012-12-04','BCCI','IND0002','0 in 0 balls','2 in 9 overs',1,12);
			    insert into played_players values ('2012-12-04','ECB','ENG0001','60 in 50 balls','0 in 0 overs',2,15);
			    insert into played_players values ('2012-12-04','ECB','ENG0002','83 in 70 balls','0 in 0 overs',2,20);
			    insert into played_players values ('2012-12-04','ECB','ENG0003','0 in 0 balls','3 in 9 overs',1,20);
                            insert into played_players values ('2007-2-13','CA','AUS0001','101 in 68 balls','0 in 0 overs',2,10);
                            insert into played_players values ('2007-2-13','CA','AUS0003','92 in 75 balls','0 in 0 overs',1,15);
                            insert into played_players values ('2007-2-13','CA','AUS0002','0 in 0 balls','2 in 10 overs',1,10);
                            insert into played_players values ('2007-2-13','CAS','SA0001','92 in 70 balls','0 in 0 overs',2,10);
                            insert into played_players values ('2007-2-13','CAS','SA0003','74 in 59 balls','0 in 0 overs',2,12);
                            insert into played_players values ('2007-2-13','CAS','SA0002','0 in 0 balls','3 in 10 overs',3,7);
                            
create table council_trophies(
				council_name varchar(5) ,
                                trophies varchar(100),
                                under_captaincy varchar(7),
                                foreign key (council_name) references council_info(council_name)
				);
                                insert into council_trophies values('BCCI', 'ICC WORLD CHAMPION-2024', 'IND0001');
                                insert into council_trophies values('NZC', 'ICC TEST CHAMPION-2021', 'NZ0001');
                                insert into council_trophies values('CA', 'ICC WORLD CHAMPION-2015', 'AUS0001');
                                insert into council_trophies values('ECB', 'ICC WORLD CHAMPION-2019', 'ENG0001');
                            

                        
