/*
Exercise: Lyft Driver Wages
https://platform.stratascratch.com/coding/10003-lyft-driver-wages?code_type=7
*/

SELECT "index" -- issues with the index column name due to being reserved
     , nvl(lyft_drivers.start_date,' ') -- Oracle will place a null when the date is empty, however the solution requires to put a space when empty
     , nvl(lyft_drivers.end_date,' ')
     , lyft_drivers.yearly_salary
  FROM lyft_drivers lyft_drivers
 WHERE lyft_drivers.yearly_salary <= 30000
    OR lyft_drivers.yearly_salary >= 70000
