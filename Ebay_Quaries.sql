select *
From ebay_data;

-- Stock Performance Over Time

-- How has eBay’s stock price changed over the years?

select distinct(years) years,avg(open_) Open_price
from ebay_data
group by years;


-- What are the highest and lowest stock prices recorded?
select max(open_) Maximum_Price, min(open_) Minimum_Price
from ebay_data;


-- Volatility Analysis

-- What is the average daily/weekly/monthly stock price change?
select distinct weeks,avg(open_) Week_Price
from ebay_data
group by weeks
order by week_price;

select distinct months,avg(open_) Monthly_Price
from ebay_data
group by months
order by Monthly_Price;

-- Which periods show the highest volatility?
SELECT 
    weeks, 
    (close_ - LAG(close_) OVER (ORDER BY weeks)) / LAG(close_) OVER (ORDER BY weeks) * 100 AS Daily_Volatility
FROM ebay_data
ORDER BY daily_volatility DESC;

SELECT 
    years, 
    STDDEV(close_) AS price_volatility
FROM ebay_data
GROUP BY years
ORDER BY price_volatility DESC;

-- What are the peak trading days?

select weeks,volume
from ebay_data
group by weeks,Volume
order by volume desc;