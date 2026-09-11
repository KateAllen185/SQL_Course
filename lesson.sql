/*
Example lesson stub
*/
SELECT ps.Patientid,
       ps.Hospital,
       ps.ward,
       ps.AdmittedDate,
       ps.DischargeDate,
       ps.Ethnicity
FROM   PatientStay AS ps
WHERE  ps.Hospital IN ('Kingston', 'PRUH')
       AND (ps.Ward LIKE '%o%'
            OR ps.Ward LIKE '%surgery')
       AND ps.Ethnicity IS NULL;


/*SELECT distinct ps.Hospital
	FROM PatientStay ps*/