-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT t.Name AS TrackName, a.Name AS ArtistName
FROM invoice_items ii
LEFT JOIN tracks t ON ii.TrackId = t.TrackId
LEFT JOIN albums al ON t.AlbumId = al.AlbumId
LEFT JOIN artists a ON al.ArtistId = a.ArtistId;