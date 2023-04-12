-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.FirstName, e.LastName, c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate
FROM customers c, employees e, invoices i
WHERE i.CustomerId = c.CustomerId;