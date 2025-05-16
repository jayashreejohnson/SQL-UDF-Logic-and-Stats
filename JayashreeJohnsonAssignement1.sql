-- step1
DROP FUNCTION IF EXISTS PersonName;
CREATE FUNCTION PersonName(FirstName VARCHAR(50), LastName VARCHAR(50), Age INT)
RETURNS VARCHAR(200) DETERMINISTIC
BEGIN
    DECLARE message VARCHAR(255);

    IF Age > 25 THEN
        SET message = 'You are an adult person';
    ELSE
        SET message = 'You are a young person';
    END IF;

    RETURN message;
END;
-- call func

SELECT 'Jayashree' AS FirstName, 'Johnson' AS LastName, PersonName('Jayashree', 'Johnson', 24) AS Message;
SELECT 'Jayashree' AS FirstName, 'Johnson' AS LastName, PersonName('Jayashree', 'Johnson', 36) AS Message;

-- step2
CREATE FUNCTION average5(a INT, b INT, c INT, d INT, e INT)
RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    RETURN (a + b + c + d + e) / 5;
END;

SELECT average5(1, 2, 3, 4, 5) AS Average;

-- step3

DROP FUNCTION IF EXISTS varianceA;
CREATE FUNCTION varianceA(A INT)
RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    DECLARE avg_value DECIMAL(10,2);
    DECLARE sum_variance DECIMAL(10,2);
    DECLARE num INT;
    DECLARE variance DECIMAL(10,2);

    -- call average5 function 
    SET avg_value = average5(1, 2, 3, 4, 5);  

    SET sum_variance = 0;
    SET num = 1;

    -- calculate variance with loop
    WHILE num <= A DO
        SET sum_variance = sum_variance + POW(num - avg_value, 2);
        SET num = num + 1;
    END WHILE;

    -- compute variance
    SET variance = sum_variance / A;

    RETURN variance;
END;

SELECT varianceA(5) AS Variance;