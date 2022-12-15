SELECT 
    b1.id, 
    b2.name, 
    courses.name AS course,
    schools.name AS school,
    educations."endDate" 
FROM 
    educations
JOIN 
    users b1
ON 
    b1.id="userId"
JOIN 
    users b2
ON
    b2.id="userId"
JOIN 
    schools
ON 
    schools.id="schoolId"
JOIN 
    courses
ON
    courses.id="courseId"
WHERE
    b1.id=30;
