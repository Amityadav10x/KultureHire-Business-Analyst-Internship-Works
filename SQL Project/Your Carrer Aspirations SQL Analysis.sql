-- ---------------------------------------------------------------------------------------  Carrer Aspirations of GenZ -------------------------------------------------------------------------

-- Gender Distribution of Respondents from India

select gender, count(*) as distribution
from Carrer
where country = 'India'
group by gender
order by distribution desc

-- Percentage of Respondents Interested in Education Abroad and Sponsorship

select 
    (count(case when self_sponsored_higher_education = 'Yes' then 1 end) * 100.0 / COUNT(*)) as percentage_interested
from Carrer
where country = 'India';

-- Top 6 Influences on Career Aspirations for Respondents in India

select top 6 career_aspiration_influences, count(*) as total
from Carrer
where country = 'India'
group by career_aspiration_influences
order by total desc


-- How Career Aspiration Influences Vary by Gender in India

select career_aspiration_influences, gender,count(*) as total
from Carrer
where country = 'India'
group by career_aspiration_influences, gender

-- Percentage of Respondents Willing to Work for a Company for at Least 3 Years

select
    round(count(case when work_3_years_likelihood = 'Yes' then 1 end) * 100.0 / count(*),0) as percentage_willing
from Carrer
where country = 'India';

-- Respondents Preferring to Work for Socially Impactful Companies

select count(*) as total
from Carrer
where country = 'India' and work_for_no_social_impact_company = 'No'

--  Preference for Socially Impactful Companies by Gender

select gender, count(*) as total
from Carrer
where country = 'India' and work_for_no_social_impact_company = 'No'
group by gender

-- Distribution of Minimum Expected Salary in the First Three Years

select min_salary_first_3_year, count(*) as count_of_values
from Carrer
group by min_salary_first_3_year
order by min_salary_first_3_year ;

-- Expected Minimum Monthly Salary in Hand

select min_starting_salary, COUNT(*) AS count
from Carrer
group by min_starting_salary
order by min_starting_salary;

-- Percentage of Respondents Preferring Remote Working

select 
    (count(case when preferred_working_environment = 'Remote' then 1 end) * 100 / count(*)) as percentage_preferring_remote
from Carrer
where country = 'India';

-- Preferred Number of Daily Work Hours

select daily_work_hours, count(*) AS total
from Carrer
group by daily_work_hours
order by daily_work_hours desc;

-- Common Work Frustrations Among Respondents

select Work_Frustations, count(*) as count
from Carrer
group by Work_Frustations
order by count desc;

-- Need for Work-Life Balance Interventions by Gender

select top 10 Work_Frustations, gender, count(*) as total
from Carrer
group by gender, Work_Frustations
order by total desc

-- Willingness to Work Under an Abusive Manager

select count(*) AS total_Willingness_to_Work_Under_an_Abusive_Manager
from Carrer
where work_under_abusive_manager = 'Yes';

-- Distribution of Minimum Expected Salary After Five Years

select min_salary_after_5_years, count(*) AS total_distribution
from Carrer
group by min_salary_after_5_years
order by min_salary_after_5_years;

-- Remote Working Preferences by Gender

select gender, COUNT(*) AS total_people
from Carrer
where preferred_working_environment = 'Remote'
group by gender
order by total_people

-- Top Work Frustrations for Each Gender

select gender, Work_Frustations, COUNT(*) AS count
from Carrer
group by gender, Work_Frustations
order by gender, count desc;

-- Factors Boosting Work Happiness and Productivity

select work_happiness_boosters1, count(*) as total
from Carrer
group by work_happiness_boosters1
order by total desc;

-- Percentage of Respondents Needing Sponsorship for Education Abroad

select 
    (count(case when self_sponsored_higher_education = 'Yes' then 1 end) * 100.0 / count(*)) as percentage_needing_sponsorship
from Carrer
where country = 'India';

