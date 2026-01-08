-- business problems--


select * from Books WHERE Genre='Fiction';

select * from Books WHERE published_year> 1950;

select * from Customers WHERE country='canada';

SELECT * FROM Orders WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

SELECT SUM(Stock) FROM Books;

select * from Books order by price desc limit 1;

select * from orders WHERE quantity >1;

select * from orders WHERE total_amount >20;

select distinct genre from Books;

SELECT * FROM Books ORDER BY Stock ASC LIMIT 1;

SELECT SUM(Total_Amount) FROM Orders;

SELECT b.Genre, SUM(o.Quantity) AS Total_Books_Sold
FROM Books b
JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Genre;

SELECT AVG(Price) FROM Books WHERE Genre = 'Fantasy';

SELECT Customer_ID, COUNT(Order_ID) AS Order_Count
FROM Orders
GROUP BY Customer_ID
HAVING COUNT(Order_ID) >= 2;

SELECT Book_ID, COUNT(Order_ID) AS Times_Ordered
FROM Orders
GROUP BY Book_ID
ORDER BY Times_Ordered DESC
LIMIT 1;

SELECT * FROM Books
WHERE Genre = 'Fantasy'
ORDER BY Price DESC
LIMIT 3;

SELECT b.Author, SUM(o.Quantity) AS Total_Sold
FROM Books b
JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Author;

SELECT DISTINCT c.City
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
WHERE o.Total_Amount > 30;

SELECT c.Name, SUM(o.Total_Amount) AS Total_Spent
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Name
ORDER BY Total_Spent DESC
LIMIT 1;

SELECT Title, Stock FROM Books;

SELECT c.City, c.Name, SUM(o.Total_Amount) AS Total_Spent
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
GROUP BY c.City, c.Name
ORDER BY c.City, Total_Spent DESC;

SELECT * FROM Books
WHERE Book_ID NOT IN (SELECT DISTINCT Book_ID FROM Orders);
