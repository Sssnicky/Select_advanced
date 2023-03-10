insert into artists (name)
values ('The Weekend'), ('Tyler, The Creator'), ('Drake'), ('Therr Maitz'), ('Post Malone'), 
('GoGo Penguin'), ('Central Cee'), ('Markul');

insert into genres (name)
values ('Pop'), ('Trap'), ('Electronic'), ('Jazz'), ('Drill');

insert into artist_genre (artist_id, genre_id)
values (1, 1),
	   (1, 2),
	   (2, 2),
	   (3, 2),
	   (3, 1),
	   (4, 3), 
	   (5, 2),
	   (6, 4), 
	   (7, 5),
	   (8, 2);

insert into albums (name, year)
values ('Beauty Behind The Madness', 2015),
	   ('Dawn FM', 2022),
	   ('IGOR', 2019),
	   ('Scorpion', 2018),
	   ('Container', 2018),
	   ('Hollywood''s Bleeding', 2019),
	   ('GoGo Penguin', 2020), 
	   ('Wild West', 2021),
	   ('Great Depression', 2018),
	   ('Sense Of Human', 2021);

insert into artist_album (album_id, artist_id)
values (1, 1),
	   (2, 1),
	   (3, 2), 
	   (4, 3), 
	   (5, 4), 
	   (6, 5), 
	   (7, 6), 
	   (8, 7), 
	   (9, 8),
	   (10, 8);

insert into songs (name, duration, album_id)
values ('Can''t Feel My Face', 213, 1),
	   ('Shameless', 253, 1),
	   ('Starry Eyes', 146, 2),
	   ('Take My Breath', 339, 2),
	   ('I THINK', 212, 3),
	   ('PUPPET', 178, 3),
	   ('God''s Plan', 198, 4),
	   ('Summer Games', 247, 4),
	   ('Container', 296, 5), 
	   ('Allergic', 156, 6),
	   ('Circles', 215, 6),
	   ('Open', 287, 7),
	   ('Embers', 180, 7),
	   ('6 For 6', 148, 8),
	   ('Commitment Issues', 150, 8),
	   ('25', 173, 9),
	   ('Серпантин', 186, 9),
	   ('Cuba Libre', 174, 10),
	   ('Dali', 197, 10);

insert into collections (name, year)
values ('Best Hip-Hop', 2023),
	   ('Drill & Jazz', 2022),
	   ('Best Pop', 2018),
	   ('Best Of Markul', 2022),
	   ('Best Of The Best', 2023),
	   ('Jazz & Chill', 2020),
	   ('Best Collection', 2023),
	   ('Best Of The Weekend', 2022);

insert into song_collection (song_id, collection_id)
values (7, 1), (14, 1), (15, 1), (16, 1), (17, 1), 
	   (12, 2), (13, 2), (14, 2), (15, 2),
	   (1, 3), (2, 3), (3, 3), (4, 3), (10, 3), (11, 3), (16, 3), (18, 3), (19, 3), 
	   (16, 4), (17, 4), (18, 4), (19, 4), 
	   (1, 5), (6, 5), (9, 5),
	   (7, 6), (10, 6), (11, 6), (12, 6), (13, 6),
	   (1, 7), (3, 7), (6, 7), (9, 7), (12, 7), (14, 7),
	   (1, 8), (2, 8), (3, 8), (4, 8);
	  

	   
	   


