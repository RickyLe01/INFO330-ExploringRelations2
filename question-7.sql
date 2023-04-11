-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT t.TrackId AS TrackId, t.Name AS TrackName, t.Composer AS Composer
FROM tracks t
WHERE NOT EXISTS (SELECT 1 FROM invoice_items it WHERE it.TrackId = t.TrackId)
ORDER BY t.TrackId ASC;