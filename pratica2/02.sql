SELECT 
    testimonials.id, 
    b1.name AS writer, 
    b2.name AS recipient, 
    testimonials.message 
FROM 
    testimonials 
LEFT JOIN 
    users b1 ON testimonials."writerId" = b1.id 
LEFT JOIN 
    users b2 ON testimonials."recipientId" = b2.id;