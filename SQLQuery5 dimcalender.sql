-- CLEANSED DIM_DATE TABLE --


SELECT [DateKey]
      ,[FullDateAlternateKey] AS DATE,
       --[DayNumberOfWeek],
       [EnglishDayNameOfWeek] AS DAY,
       --[SpanishDayNameOfWeek],
       --[FrenchDayNameOfWeek],
       --[DayNumberOfMonth],
       --[DayNumberOfYear],
       [WeekNumberOfYear],
      [EnglishMonthName] AS MONTH 
	 ,LEFT ([EnglishMonthName], 3) as shortmonth,
       --[SpanishMonthName],
       --[FrenchMonthName],
      [MonthNumberOfYear] AS MONTHNO,
      [CalendarQuarter] AS QUARTER, 
      [CalendarYear] AS YEAR
      --,[CalendarSemester], 
      --,[FiscalQuarter],
      --,[FiscalYear],
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >= 2019 
