-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT t.Name as "Track" , art.Name as "Artist", i.InvoiceId as "Invoice Id", i.InvoiceLineId as "Invoice Line Id"
FROM tracks t, invoice_items i, artists art, albums al
WHERE i.TrackId = t.TrackId
AND al.AlbumId = t.AlbumId
AND al.ArtistId = art.ArtistId;
