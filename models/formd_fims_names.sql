SELECT cik_no, crd_no, name FROM firms_firm
LEFT JOIN (
    SELECT * FROM firms_regulatoryfirm WHERE form = 'D' OR form = 'D/A'
) firms_regulatoryfirm
ON firms_regulatoryfirm.firm_id = firms_firm.id
LIMIT 200