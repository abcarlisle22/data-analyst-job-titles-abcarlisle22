--How many rows are in the data_analyst_jobs table?

SELECT COUNT(title)
FROM data_analyst_jobs;

--Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

SELECT * 
from data_analyst_jobs Where title Like 'XTO Land Data Analyst'

--How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

SELECT * 
from data_analyst_jobs Where location IN ('TN','KY')

--How many postings in Tennessee have a star rating above 4?

SELECT * 
from data_analyst_jobs Where location Like 'TN' AND star_rating > 4

--How many postings in the dataset have a review count between 500 and 1000?

Select *
from data_analyst_jobs
Where review_count Between '500' and '1000'

--

Select AVG(star_rating), company,  location
from data_analyst_jobs Group By Location,Company 

--Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating?

SELECT AVG(star_rating) AS AVG_Rating, location As State,Company
FROM data_analyst_jobs
GROUP BY location,Company
ORDER BY AVG(star_rating) DESC;

--Select unique job titles from the data_analyst_jobs table. How many are there?

Select distinct title from 
public.data_analyst_jobs

--How many unique job titles are there for California companies?

Select distinct title,location from 
public.data_analyst_jobs WHERE location Like 'CA'

--Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

SELECT AVG(star_rating) AS AVG_Rating, location As State,Company,review_count
FROM data_analyst_jobs WHERE review_count >= 5000
GROUP BY location,Company, review_count

--Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

SELECT AVG(star_rating) AS AVG_Rating, location As State,Company,review_count
FROM data_analyst_jobs WHERE review_count >= 5000
GROUP BY location,Company, review_count
ORDER BY  AVG(star_rating) DESC;

--Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?-

SELECT title
FROM data_analyst_jobs WHERE title Like '%Analyst%'; 

--How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?

SELECT title
FROM data_analyst_jobs 
WHERE title Not Like '%Analyst%' 
AND title Not Like '%Analytics%'; 






