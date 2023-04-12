-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName, e.LastName
FROM employees e, invoices i, customers c
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
AND e.Title = "Sales Support Agent"
AND i.InvoiceDate LIKE "2009%"
GROUP BY e.FirstName AND e.LastName
ORDER BY SUM(i.Total) desc
Limit 1;