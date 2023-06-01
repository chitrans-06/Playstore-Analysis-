SELECT 
    *
FROM
    googleplaystore;

SELECT 
    COUNT(DISTINCT app)
FROM
    googleplaystore;

SELECT 
    COUNT(DISTINCT category)
FROM
    googleplaystore;

SELECT 
    category, COUNT(*) AS Number_of_apps
FROM
    googleplaystore
GROUP BY Category;

SELECT 
    AVG(rating) AS Average_rating,
    AVG(size) AS average_size_inkb
FROM
    googleplaystore
GROUP BY rating;

SELECT 
    category,
    MIN(installs) AS least_rating,
    MAX(installs) AS large_install
FROM
    googleplaystore
GROUP BY Category;

SELECT 
    app, rating
FROM
    googleplaystore
ORDER BY rating DESC
LIMIT 10;
 
SELECT 
    COUNT(installs), reviews, app
FROM
    googleplaystore
GROUP BY reviews
ORDER BY reviews DESC;
  
SELECT 
    app, reviews, Category
FROM
    googleplaystore
ORDER BY reviews DESC;

SELECT 
    SUM(Installs * price), app
FROM
    googleplaystore;
   
SELECT 
    category, installs
FROM
    googleplaystore
ORDER BY installs DESC;
   
SELECT 
    COUNT(genres), app
FROM
    googleplaystore
GROUP BY Genres;
   
SELECT 
    COUNT(app), Content_Rating, app, type
FROM
    googleplaystore
GROUP BY Type;
   
SELECT 
    app,
    rating,
    CASE
        WHEN rating BETWEEN 4 AND 5 THEN 'High'
        WHEN rating BETWEEN 2 AND 4 THEN 'medium'
        ELSE 'Low'
    END
FROM
    googleplaystore;
      
SELECT DISTINCT
    app, installs, category
FROM
    googleplaystore
ORDER BY Installs DESC;
      
SELECT 
    *
FROM
    googleplaystore
WHERE
    category NOT IN ('Entertainment' , 'non-education')
        AND Content_Rating IN ('Everyone' , 'teen');
   
SELECT 
    *
FROM
    googleplaystore
WHERE
    app LIKE '%i%' OR app LIKE '%D%'12  Return the app names, categories, sizes, release dates (rename it to “Last Updated”) of apps whose app names have more than 1 word, and whose categories are music and social, and whose sizes are bigger than 10. Order the output result by maximum installs in descending order, then release dates in ascending order.
	select app,category, size, LastUpdate as last_updated
	from googleplaystore
	where Category = 'ART_AND_DESIGN'
	and app like '_%'
	and size > 10;
   
#-13  Find the number of apps in each category that have a rating greater than the average rating
	select count(app),category,rating
	from googleplaystore
	group by category having rating > avg(rating);
   
#-14 List the largest app size within each app category.
	select max(app),size,category
	from googleplaystore
	group by app
	order by app desc;
   
   
   
   
   
   
   
   
   
   
   
   
   
   