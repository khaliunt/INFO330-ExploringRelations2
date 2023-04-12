-- What was the most purchased track of 2013?
SELECT t.Name as "Track Name"
FROM tracks t, invoice_items ii, invoices i
WHERE ii.TrackId = t.TrackId
AND ii.InvoiceId = i.InvoiceId
AND i.InvoiceDate LIKE "2013%"
GROUP BY t.Name
ORDER BY COUNT(ii.TrackId) desc
Limit 1;