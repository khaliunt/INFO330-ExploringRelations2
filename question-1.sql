-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
From customers c, invoices i
WHERE c.Country='Brazil'
AND i.CustomerID = c.CustomerID;
