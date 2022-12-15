SELECT 
    users.id,
    users.name,
    roles.name AS role,
    companies.name AS company,
    experiences."startDate"
FROM 
    experiences
JOIN
    users
ON  
    users.id="userId"
JOIN
    roles
ON
    roles.id="roleId"
JOIN
    companies
ON 
    companies.id="companyId"
WHERE
    users.id=50
AND 
    experiences."endDate" IS NULL;