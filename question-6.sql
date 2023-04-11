-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT t.TrackId AS TrackId, t.Name AS TrackName, t.Composer AS Composer
FROM tracks t
JOIN invoice_items it ON t.TrackId = it.TrackId
GROUP BY t.TrackId
ORDER BY t.TrackId ASC; 