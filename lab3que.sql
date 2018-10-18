-- Andre Lussier
-- 10/15/2018
-- BCS 360 12:15-1:30 MW section 
-- LAB 3 turn in says Lab4 ?

SELECT ProductName, ListPrice
FROM tPro
WHERE ListPrice > (Select AVG(ListPrice)
FROM tPro)
ORDER BY ListPrice DESC;

SELECT CategoryName, CategoryID -- ran got correct result of only cat 5 not in
FROM tCat
WHERE CategoryID NOT IN (Select
CategoryID 
FROM tPro)

SELECT DiscountPercent
FROM tPro
WHERE DiscountPercent IN(
SELECT DiscountPercent
From tPro
group by DiscountPercent
having count(*) = 1);
