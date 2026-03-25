--67070503432 Praewa Thuwatharanimitkul
--Filtering by the caution of medicine to see if the medicine need to be taken by avoiding specific things.
--Showing only medicine those had been assigned in the prescription.
SELECT m.code as "Code",m.name as "Name", m.generic_name as "Generic Name",COUNT(*) as "Usage Count", m.caution as "Caution"
FROM medicationprescription mp
JOIN medicine m on m.id = mp.medicine_id
WHERE m.caution in ( 'Avoid grapefruit','Avoid potassium supplements','Do not use if pregnant','Do not stop abruptly','Caution with alcohol')
GROUP BY m.name,m.generic_name,m.code,m.caution
ORDER BY m.code asc,m.name asc;