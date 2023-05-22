SELECT t.name as TrackName, a.title as AlbumName, mt.name as MediaType, g.name as Genre
FROM Album a  
JOIN Track t 
    ON t.AlbumId = a.AlbumId
JOIN MediaType mt
    on t.MediaTypeId = mt.MediaTypeId
JOIN Genre g
    on g.GenreId = t.GenreId