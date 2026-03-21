--Show all prisoner who had taken treatment before
--67070503432 Praewa Thuwatharanimitkul
SELECT diagnose_date as "Diagnose Date", 
pe.first_name as "Prisoner First Name", 
pe.last_name as "Prisoner Last Name",
n.first_name as "Nurse First Name", 
n.last_name as "Nurse Last Name", 
description as "Description"
FROM treatment t
JOIN nurse n on n.id = t.nurse_id
JOIN prisoner p on p.id = t.prisoner_id
JOIN person pe on pe.id = p.person_id
ORDER BY diagnose_date desc;