-- PRACTICE JOINS

--PROBLEM 1
select * from invoice i join invoiceline il on il.invoiceid = i.invoiceid where il.unitprice > 0.99;

--PROBLEM 2
SELECT invoicedate, firstname, lastname, total FROM invoice  i 
join customer c
on c.customerid = i.customerid

--PROBLEM 3
select e.firstname, e.lastname, c.firstname, c.lastname from customer c
join employee e
on e.employeeid = c.supportrepid

--PROBLEM 4
SELECT title, artistid from album a;

--PROBLEM 5
select trackid from playlisttrack pt join playlist p on p.playlistid = pt.playlistid where p.Name = "Music";

--PROBLEM 6
SELECT t.Name
FROM Track t
JOIN PlaylistTrack pt ON pt.TrackId = t.TrackId
WHERE pt.PlaylistId = 5;

--PROBLEM 7
SELECT t.name, p.name from track t join playlisttrack pt on pt.trackid = t.trackid 
join playlist on p.playlistid = pt.playlistid;

--PROBLEM 8
select t.name, a.title from  track t join album a on a.albumid = t.albumid join genre g on g.genreid = t.genreid where g.name = "Alternative";


--PRACTICE NESTED QUERIES

--PROBLEM 1
select * from invoice i
    where invoiceid in (
    select invoiceid from invoiceline 
    where(
        unitprice > 0.99
    )
    )

--PROBLEM 2
select * from playlisttrack pt
where playlistid in(
    select playlistid from playlist
    where(
        name = "Music"
    )
)

--PROBLEM 3
select t.name from track t
where trackid in(
    select trackid from playlisttrack pt
    where
        pt.playlistid = 5
    
)

--PROBLEM 4
SELECT * from track t
where genreid in(
    select genreid from genre g
    where(
        name = "Comedy"
    )
)

--PROBLEM 5
select * from track t
where albumid in(
    select albumid from album a 
    where a.title = "Fireball"
)

--PROBLEM 6
select * from track
where albumid in(
    select albumid from album
    where artistid in(
        select artistid from artist
        where name = "Queen"
    )
)


--PRACTICE UPDATING ROWS

--PROBLEM 1
