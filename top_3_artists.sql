SELECT count(ar.name) as ArtistSales, ar.name
from InvoiceLine il
JOIN Track t
    on t.TrackId = il.TrackId
JOIN Album a  
    On t.AlbumId = a.AlbumId
JOIN Artist ar
    ON ar.ArtistId = a.ArtistId
GROUP by ar.name
ORDER BY ArtistSales DESC
LIMIT 3

