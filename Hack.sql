/*
Exercise: Popularity of Hack
URL: https://platform.stratascratch.com/coding/10061-popularity-of-hack?code_type=7
*/

    select location
         , avg(popularity)
      from facebook_hack_survey
inner join facebook_employees
        on employee_id = id
  group by location 
