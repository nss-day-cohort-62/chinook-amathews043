SELECT il.InvoiceLineId, il.InvoiceId, t.name as SongName, ar.name as ArtistName
FROM InvoiceLine il
JOIN Track t
    on il.TrackId = t.TrackId
JOIN Album a 
    on a.AlbumId = t.albumId
JOIN Artist ar   
    on ar.ArtistId = a.ArtistId