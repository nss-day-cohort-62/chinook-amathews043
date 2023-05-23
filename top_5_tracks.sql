SELECT count(i.trackId) as totalPurchases, i.TrackId, t.name
FROM InvoiceLine i
JOIN Track t
    ON i.TrackId = t.TrackId
GROUP By i.TrackId 
ORDER BY totalPurchases DESC
LIMIT 5

