-- 1. Pet Shelter Table
CREATE TABLE Pet_Shelter (
    shelter_id INT PRIMARY KEY,
    shelter_name VARCHAR(100),
    address VARCHAR(255),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- 2. Pet Staff Table
CREATE TABLE Pet_Staff (
    staff_id INT PRIMARY KEY,
    shelter_id INT,
    hire_date DATE,
    roles VARCHAR(100),
    FOREIGN KEY (shelter_id) REFERENCES Pet_Shelter(shelter_id)
);

-- 3. Pet Adopter Table
CREATE TABLE Pet_Adopter (
    adopter_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(50),
    address VARCHAR(255),
    email VARCHAR(100)
);

-- 4. Pet Table
CREATE TABLE Pet (
    pet_id INT PRIMARY KEY,
    description VARCHAR(300),
    age INT,
    health_status VARCHAR(50),
    date_registered DATE,
    shelter_id INT,
    adopted VARCHAR(3),
    pet_adopter_id INT,
    FOREIGN KEY (shelter_id) REFERENCES Pet_Shelter(shelter_id),
    FOREIGN KEY (pet_adopter_id) REFERENCES Pet_Adopter(adopter_id)
);

-- 5. Pet Type Table
CREATE TABLE Pet_Type (
    pet_id INT PRIMARY KEY,
    pet_type VARCHAR(50),
    breed VARCHAR(50),
    FOREIGN KEY (pet_id) REFERENCES Pet(pet_id)
);

-- insert pet shelter
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (201, 'Paws Animal Shelter', '123 Main Street, dhaka', 'info@paws.org', '5554356');
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (202, 'Chance Pet Rescue', '456 CDA Avenue, Chittagong', 'contact@chance.org', '50102');
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (203, 'Furry Friends Haven', '789 Pine Road, Barishal', 'hello@furryfriends.com', '5550103');
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (204, 'PawsWhiskers Sanctuary', '321 Elm Street, Rangpur', 'info@pawswhiskers.net', '5550104');
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (205, 'Animal Care Alliance', '654 Maple Drive, Boalkhali', 'support@animalcare.org', '5550105');
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (206, 'Safe Harbor Pet Shelter', '987 Cedar Lane, Rangamati', 'admin@safeharbor.org', '5550106');
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (207, 'Loving Hearts Animal Rescue', '147 Birch Boulevard, Comilla', 'care@lovinghearts.com', '5550107');
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (208, 'Sunshine Pet Sanctuary', '258 Willow Way, Brahmanbaria', 'info@sunshinepets.org', '5550108');
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (209, 'Guardian Angel Pet Shelter', '369 Spruce Circle, Chittagong', 'guardian@angelspets.net', '5550109');
INSERT INTO Pet_Shelter (shelter_id, shelter_name, address, email, phone_number) VALUES (210, 'Forever Home Animal Center', '741 Redwood Street, Dhaka', 'forever@homeanimals.org', '5550110');

-- insert pet staff
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (301, 203, DATE '2023-01-15', 'Shelter Manager');
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (302, 205, DATE '2023-03-22', 'Veterinarian');
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (303, 201, DATE '2023-05-10', 'Animal Care Coordinator');
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (304, 207, DATE '2023-07-08', 'Adoption Counselor');
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (305, 202, DATE '2023-09-12', 'Volunteer Coordinator');
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (306, 204, DATE '2023-11-03', 'Veterinary Technician');
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (307, 208, DATE '2024-01-20', 'Kennel Attendant');
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (308, 206, DATE '2024-03-14', 'Animal Behaviorist');
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (309, 201, DATE '2024-05-25', 'Administrative Assistant');
INSERT INTO Pet_Staff (staff_id, shelter_id, hire_date, roles) VALUES (310, 205, DATE '2024-07-01', 'Maintenance Supervisor');

-- insert pet adopter
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (401, 'Shahidur Rahman', '5551234', 'Chittagong', 'shahidurrahman@email.com');
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (402, 'Sumaya Rahman', '5552345', 'Barishal', 'sumaya.rahman@email.com');
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (403, 'Salman Rahman', '5553456', 'Dhaka', 'salmanrahman@email.com');
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (404, 'Sakib Khan', '5554567', 'Mymenshingh', 'sakibkhan@email.com');
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (405, 'Jannatul Ferdous', '5555678', 'Chittagong', 'jannatulferdous@email.com');
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (406, 'Mohammad Yasin', '5556789', 'Dhaka', 'mohammadyasin@email.com');
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (407, 'Joshim Akter', '5557890', 'Comilla', 'joshimakter@email.com');
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (408, 'Malek Mia', '5558901', 'Rangpur', 'malekmia@email.com');
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (409, 'Abrar Kashem', '5559012', 'Bhola', 'abrarkashem@email.com');
INSERT INTO Pet_Adopter (adopter_id, name, contact, address, email) VALUES (410, 'Sweety Akter', '5550123', 'Chittagong', 'sweetyakter@email.com');

INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (501, 'Golden Retriever mix, friendly and energetic, loves playing fetch and swimming', 3, 'Healthy', DATE '2024-01-15', 203, 'Yes', 401);
INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (502, 'Tabby cat, calm and affectionate, enjoys sunny windowsills', 2, 'Healthy', DATE '2024-02-10', 205, 'No', NULL);
INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (503, 'Border Collie, highly intelligent and active, needs experienced owner', 4, 'Vaccinated', DATE '2024-01-22', 201, 'Yes', 403);
INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (504, 'Persian cat, long-haired and gentle, requires regular grooming', 5, 'Healthy', DATE '2024-03-05', 207, 'No', NULL);
INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (505, 'Labrador puppy, playful and social, great with children', 1, 'Vaccinated', DATE '2024-03-18', 202, 'Yes', 405);
INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (506, 'Colorful Budgerigar, cheerful and social, enjoys singing and playing', 2, 'Healthy', DATE '2024-02-28', 204, 'No', NULL);
INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (507, 'Holland Lop rabbit, gentle and quiet, loves fresh vegetables', 3, 'Healthy', DATE '2024-04-12', 208, 'Yes', 407);
INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (508, 'Golden Syrian hamster, active at night, needs spacious cage', 1, 'Healthy', DATE '2024-04-20', 206, 'No', NULL);
INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (509, 'Cockatiel, friendly and intelligent, can learn to whistle tunes', 4, 'Vaccinated', DATE '2024-05-08', 201, 'Yes', 409);
INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) VALUES (510, 'Netherland Dwarf rabbit, small and energetic, great for apartments', 2, 'Healthy', DATE '2024-05-15', 205, 'No', NULL);

--insert pet type
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (501, 'Dog', 'Golden Retriever Mix');
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (502, 'Cat', 'Tabby');
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (503, 'Dog', 'Border Collie');
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (504, 'Cat', 'Persian');
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (505, 'Dog', 'Labrador Retriever');
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (506, 'Bird', 'Budgerigar');
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (507, 'Rabbit', 'Holland Lop');
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (508, 'Hamster', 'Golden Syrian');
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (509, 'Bird', 'Cockatiel');
INSERT INTO Pet_Type (pet_id, pet_type, breed) VALUES (510, 'Rabbit', 'Netherland Dwarf');

-- 1. SELECT with WHERE clause (Find Shelter name, address and phone number where shelter_id is between 201 to 205)
SELECT shelter_name, address, phone_number 
FROM Pet_Shelter 
WHERE shelter_id BETWEEN 201 AND 205;

-- 2. SELECT with ORDER BY (order pet staffs by hire date in descending order)
SELECT staff_id, roles, hire_date 
FROM Pet_Staff 
ORDER BY hire_date DESC;

-- 3. SELECT with LIKE pattern matching (Searching adopter named Malek or gmail user)
SELECT name, email, contact 
FROM Pet_Adopter 
WHERE name LIKE '%Malek%' OR email LIKE '%gmail%';

-- 4. Aggregate functions COUNT (Number of adopted Pets)
SELECT adopted, COUNT(*) as pet_count 
FROM Pet 
GROUP BY adopted;

-- 5. DISTINCT (Searching unique pet types)
SELECT DISTINCT pet_type 
FROM Pet_Type 
ORDER BY pet_type;

-- 6. UPDATE with WHERE condition (updating phone number in the shelter table)
UPDATE Pet_Shelter 
SET phone_number = '555-9999' 
WHERE shelter_id = 201;

-- 7. UPDATE with multiple columns (Pet_Staff table)
UPDATE Pet_Staff 
SET roles = 'Senior Veterinarian', hire_date = DATE '2022-12-01' 
WHERE staff_id = 302;

-- 8. DELETE Pet_Adopter table
DELETE FROM Pet_Adopter 
WHERE adopter_id = 410;


-- 9. Searching pets based on age category
SELECT pet_id, description, age,
    CASE 
        WHEN age <= 1 THEN 'Baby'
        WHEN age <= 3 THEN 'Young'
        WHEN age <= 6 THEN 'Adult'
        ELSE 'Senior'
    END as age_category
FROM Pet;

-- 10. SELECT with aggregate functions - MIN, MAX, AVG (Pet_Type table with Pet data)
SELECT *
FROM Pet
WHERE adopted = 'Yes'
  AND age > (SELECT AVG(age) FROM Pet);

  -- dml queries 5 ways

 -- 1. SELECT with JOIN - Get pet information with shelter and type details
SELECT p.pet_id, p.description, p.age, pt.pet_type, pt.breed,
       ps.shelter_name, ps.address
FROM Pet p
JOIN Pet_Type pt ON p.pet_id = pt.pet_id
JOIN Pet_Shelter ps ON p.shelter_id = ps.shelter_id
WHERE p.adopted = 'No'
ORDER BY p.pet_id;

-- 2. UPDATE with JOIN - Update pet health status based on shelter staff expertise
UPDATE Pet
SET health_status = 'Checkup done'
WHERE health_status = 'Healthy'
AND shelter_id IN (
    SELECT DISTINCT ps.shelter_id
    FROM Pet_Staff pst
    JOIN Pet_Shelter ps ON pst.shelter_id = ps.shelter_id
    WHERE pst.roles LIKE '%Veterinarian%'
);

-- 3. DELETE with JOIN - Remove staff records from shelters with no available pets
DELETE FROM Pet_Staff pst
WHERE pst.roles = 'Shelter Manager'
AND EXISTS (
    SELECT 1
    FROM Pet_Shelter ps
    JOIN Pet p ON ps.shelter_id = p.shelter_id
    WHERE pst.shelter_id = ps.shelter_id
    AND p.adopted = 'Yes'
)
AND NOT EXISTS (
    SELECT 1 
    FROM Pet p2 
    WHERE p2.shelter_id = pst.shelter_id 
    AND p2.adopted = 'No'
);
-- 4. SELECT with multiple JOINs and aggregation - Show adopter statistics
SELECT pa.name, pa.email, COUNT(p.pet_id) as pets_adopted
FROM Pet_Adopter pa
JOIN Pet p ON pa.adopter_id = p.pet_adopter_id
GROUP BY pa.adopter_id, pa.name, pa.email
HAVING COUNT(p.pet_id) > 0
ORDER BY pets_adopted DESC;

-- 5. UPDATE with complex JOIN conditions - Update shelter contact info based on staff changes
UPDATE Pet_Shelter 
SET email = 'newmanager@' || LOWER(REPLACE(shelter_name, ' ', '')) || '.org'
WHERE shelter_id IN (
    SELECT shelter_id 
    FROM Pet_Staff 
    WHERE roles = 'Animal Care Coordinator' 
    OR hire_date > DATE '2024-01-01'
);

-- all subqueries
-- 1. SCALAR SUBQUERY (Single Value)
-- Find pets older than the average age of all pets
SELECT pet_id, description, age
FROM Pet
WHERE age > (SELECT AVG(age) FROM Pet);

-- 2. SINGLE ROW SUBQUERY with WHERE clause
-- Find the shelter with the most recently hired staff
SELECT shelter_name, address
FROM Pet_Shelter
WHERE shelter_id = (
    SELECT shelter_id 
    FROM Pet_Staff 
    WHERE hire_date = (SELECT MAX(hire_date) FROM Pet_Staff)
);

-- 3. MULTIPLE ROW SUBQUERY with IN operator
-- Find all adopters who have adopted pets
SELECT name, email, contact
FROM Pet_Adopter
WHERE adopter_id IN (
    SELECT DISTINCT pet_adopter_id 
    FROM Pet 
    WHERE pet_adopter_id IS NOT NULL
);

-- 4. MULTIPLE ROW SUBQUERY with ANY operator
-- Find pets that are older than any cat in the shelter
SELECT p.pet_id, p.description, p.age
FROM Pet p
JOIN Pet_Type pt ON p.pet_id = pt.pet_id
WHERE p.age > ANY (
    SELECT p2.age
    FROM Pet p2
    JOIN Pet_Type pt2 ON p2.pet_id = pt2.pet_id
    WHERE pt2.pet_type = 'Cat'
);

-- 5. MULTIPLE ROW SUBQUERY with ALL operator
-- Find pets that are older than all hamsters
SELECT p.pet_id, p.description, p.age
FROM Pet p
JOIN Pet_Type pt ON p.pet_id = pt.pet_id
WHERE p.age > ALL (
    SELECT p2.age
    FROM Pet p2
    JOIN Pet_Type pt2 ON p2.pet_id = pt2.pet_id
    WHERE pt2.pet_type = 'Hamster'
);
-- 8. CORRELATED SUBQUERY
-- Find pets that are older than the average age of pets in their shelter
SELECT p.pet_id, p.description, p.age, p.shelter_id
FROM Pet p
WHERE p.age > (
    SELECT AVG(p2.age)
    FROM Pet p2
    WHERE p2.shelter_id = p.shelter_id
);

-- 9. SUBQUERY in FROM clause (Derived Table)
-- Find shelters with their pet counts and average pet age
SELECT ps.shelter_name, pet_stats.pet_count, pet_stats.avg_age
FROM Pet_Shelter ps
JOIN (
    SELECT shelter_id, 
           COUNT(*) as pet_count,
           ROUND(AVG(age), 2) as avg_age
    FROM Pet
    GROUP BY shelter_id
) pet_stats ON ps.shelter_id = pet_stats.shelter_id;

-- 10. SUBQUERY in SELECT clause
-- Show each staff member with their shelter's total pet count
SELECT s.staff_id, s.roles, s.shelter_id,
    (SELECT COUNT(*) 
     FROM Pet p 
     WHERE p.shelter_id = s.shelter_id) as shelter_pet_count
FROM Pet_Staff s;

-- 11. NESTED SUBQUERY (Multiple levels)
-- Find pets in shelters where staff was hired after 2023
SELECT pet_id, description, age
FROM Pet
WHERE shelter_id IN (
    SELECT DISTINCT shelter_id
    FROM Pet_Staff
    WHERE hire_date > (
        SELECT DATE '2023-12-31'
        FROM DUAL
    )
);

-- 12. SUBQUERY with HAVING clause
-- Find pet types that have more pets than the average count per type
SELECT pt.pet_type, COUNT(*) as pet_count
FROM Pet_Type pt
GROUP BY pt.pet_type
HAVING COUNT(*) > (
    SELECT AVG(type_count)
    FROM (
        SELECT COUNT(*) as type_count
        FROM Pet_Type
        GROUP BY pet_type
    )
);

-- 13. UPDATE with SUBQUERY
-- Update health status for pets in shelters with veterinarians
UPDATE Pet
SET health_status = 'Vaccinated'
WHERE shelter_id IN (
    SELECT shelter_id
    FROM Pet_Staff
    WHERE roles LIKE '%Veterinarian%'
)
AND health_status = 'Healthy';
-----------------------------------
CREATE TABLE Pet_Adoption_Log (
    log_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    pet_id NUMBER,
    adopter_id NUMBER,
    adoption_date DATE
);

CREATE OR REPLACE TRIGGER LogPetAdoption
AFTER UPDATE OF adopted ON Pet
FOR EACH ROW
WHEN (NEW.adopted = 'Yes' AND OLD.adopted = 'No')
BEGIN
    INSERT INTO Pet_Adoption_Log (pet_id, adopter_id, adoption_date)
    VALUES (:NEW.pet_id, :NEW.pet_adopter_id, SYSDATE);
END;
/

UPDATE Pet
SET adopted = 'Yes', pet_adopter_id = 408
WHERE pet_id = 502;  -- or whatever existing pet ID
SELECT * FROM Pet_Adoption_Log;

CREATE OR REPLACE TRIGGER PreventAdoptionWithoutAdopter
BEFORE UPDATE OF adopted ON Pet
FOR EACH ROW
WHEN (NEW.adopted = 'Yes')
BEGIN
    IF :NEW.pet_adopter_id IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Cannot mark pet as adopted without an adopter ID.');
    END IF;
END;
/
-- it will work
UPDATE Pet
SET adopted = 'Yes', pet_adopter_id = 409
WHERE pet_id = 504;
--it wont work
UPDATE Pet
SET adopted = 'Yes', pet_adopter_id = NULL
WHERE pet_id = 510;


CREATE OR REPLACE PROCEDURE RegisterPet (
    p_pet_id          IN NUMBER,
    p_description     IN VARCHAR2,
    p_age             IN NUMBER,
    p_health_status   IN VARCHAR2,
    p_date_registered IN DATE,
    p_shelter_id      IN NUMBER,
    p_adopted      IN VARCHAR2,
    p_pet_adopter_id  IN NUMBER
)
IS
BEGIN
    INSERT INTO Pet (pet_id, description, age, health_status, date_registered, shelter_id, adopted, pet_adopter_id) 
    VALUES (p_pet_id, p_description, p_age, p_health_status, p_date_registered, p_shelter_id, p_adopted, p_pet_adopter_id);
    DBMS_OUTPUT.PUT_LINE('Pet Registered Successfully.');
END;
/

BEGIN
    RegisterPet(511, 'Golden Retriever mix, friendly and energetic, loves playing fetch and swimming', 5, 'Healthy', DATE '2024-01-15', 203, 'Yes', 401);
 END;


