--Show all nurse workloads in percentage
--For assigning nurse workload in the future
--67070503432 Praewa Thuwatharanimitkul
SELECT n.first_name as "Nurse First Name", 
n.last_name as "Nurse Last Name", 
ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(),2) as "Nurse Workload Percentage" 
FROM treatment t 
JOIN nurse n on n.id=t.nurse_id
GROUP BY n.first_name,n.last_name
ORDER BY "Nurse Workload Percentage" desc, n.first_name asc, n.last_name asc;