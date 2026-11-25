# Write your MySQL query statement below
select t2.id 
from weather t1, weather t2
where datediff(t2.recorddate, t1.recorddate) = 1 
and t2.temperature > t1.temperature;


