-- cleansed dim-customer table--
select 
c.customerkey as customerkey,
c.firstname  + ' ' + c.lastname  as full_name,

case c.gender when 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS GENDER,
c.datefirstpurchase as Datefirstpurchase,
g.city as [customer city] 
from dbo.DimCustomer as c 
left join DimGeography AS G ON G.GeographyKey = C.GeographyKey
ORDER BY customerkey asc 