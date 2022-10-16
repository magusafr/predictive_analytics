-- retrieve monthly data from Iowa dataset
SELECT CONCAT(yr,'-',mn,'-',28), total_sales
FROM (
		SELECT EXTRACT(YEAR FROM date) yr, EXTRACT(MONTH FROM date) mn, SUM(sale_dollars) total_sales
		FROM iowa_clean
		GROUP BY 1,2
		ORDER BY 1,2
	)A;
