--Show all medicine those had been used in the medical prescription
--67070503432 Praewa Thuwatharanimitkul
SELECT m.code as "Code",
m.name as "Name", 
m.generic_name as "Generic Name",
COUNT(*) as "Usage Count", m.caution as "Caution"
FROM medicationprescription mp
JOIN medicine m on m.id = mp.medicine_id
GROUP BY m.name,m.generic_name,m.code,m.caution
ORDER BY m.code asc,m.name asc;