select g.name name_of_the_genre, count(ar.name) artists_in_genre from artists ar
join artist_genre ag on ar.artist_id = ag.artist_id 
join genres g on g.genre_id = ag.genre_id 
group by g.name
order by artists_in_genre desc;

select count(s.name) count_of_songs_from_2019_2020 from songs s
join albums al on s.album_id = al.album_id 
where al.year = 2019 or al.year = 2020;

select al.name, AVG(s.duration) average_duration from songs s
join albums al on s.album_id = al.album_id 
group by al.name 
order by average_duration desc;

select distinct ar.name from artist_album aral
join albums al on aral.album_id = al.album_id 
join artists ar on aral.artist_id = ar.artist_id 
where not al.year = 2020;

select distinct c.name from collections c
join song_collection sc on c.collection_id = sc.collection_id 
join songs s on sc.song_id = s.song_id 
join albums al on s.album_id = al.album_id 
join artist_album aa on al.album_id = aa.album_id 
join artists ar on aa.artist_id = ar.artist_id 
where ar.name = 'Markul';

select al.name album_name from albums al
join artist_album aa on al.album_id = aa.album_id 
join artists ar on aa.artist_id = ar.artist_id 
join artist_genre ag on ar.artist_id = ag.artist_id 
join genres g on ag.genre_id = g.genre_id 
group by al.name
having count(ag.artist_id) > 1;

select s.name from songs s
where s.song_id not in(select sc.song_id from song_collection sc);
 
select ar.name name_of_the_artist_with_shortest_song from artists ar
left join artist_album aa on ar.artist_id = aa.artist_id 
left join albums al on aa.album_id = al.album_id 
left join songs s on al.album_id = s.album_id 
where s.duration = (select MIN(s.duration) from songs s);


SELECT al.name FROM albums al
JOIN songs s ON al.album_id = s.album_id
GROUP BY al.album_id
HAVING COUNT(s.song_id) = (SELECT MIN(cnt) from
(SELECT COUNT(song_id) AS cnt FROM songs GROUP BY album_id) as min_songs)

