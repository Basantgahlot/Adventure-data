-- cleansed dim_product table--


SELECT p.[ProductKey]
      ,p.[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName]
      --,[LargePhoto]
      ,p.[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
     -- ,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      , p.[Status], 
	  pc.englishproductcategoryname as [product category],
	  ps.englishproductsubcategoryname as [product sub category],
	  ISNULL (p.status, 'outdated') as [product status]
	  

  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  left join dbo.dimproductsubcategory as ps on ps.productsubcategorykey = p.productsubcategorykey
left join dbo.dimproductcategory as pc on ps.productcategorykey = pc.productcategorykey

order by p.productkey asc 