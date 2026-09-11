/*
Example lesson stub
*/
SELECT ps.Patientid,
       ps.Hospital,
       ps.ward,
       ps.AdmittedDate,
       ps.DischargeDate,
       DATEADD(MONTH, 3, ps.DischargeDate) AS AppointmentDate,
       DATEADD(WEEK, -2, ps.AdmittedDate) AS ReminderDate,
       ps.Ethnicity
FROM   PatientStay AS ps
WHERE  ps.Hospital IN ('Kingston', 'PRUH')
       AND (ps.Ward LIKE '%o%'
            OR ps.Ward LIKE '%surgery')
       --AND ps.Ethnicity IS NULL
       AND ps.AdmittedDate <= '2024-02-28'
       ORDER BY ps.Hospital, ps.Ward

     SELECT
     ps.hospital,
     ps.ward,
     COUNT (*) AS NumberOfPatients,
     SUM(ps.Tariff) as TotalTariff
     
     
     FROM PatientStay AS ps
     GROUP BY ps.Hospital, ps.Ward


/*SELECT distinct ps.Hospital
	FROM PatientStay ps*/