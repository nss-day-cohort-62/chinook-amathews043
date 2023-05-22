SELECT count(pl.trackId) as totalSongs, p.name, p.PlaylistId
FROM PlaylistTrack pl
JOIN Playlist p 
    ON p.PlaylistId = pl.PlaylistId
Group By p.PlaylistId, p.name
