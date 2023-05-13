-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
DROP PROCEDURE IF EXISTS sec_date;
DELIMITER $$
CREATE PROCEDURE sec_date
(
	IN sec INT
)
BEGIN
DECLARE n INT;
DECLARE yy INT;
DECLARE mm INT;
DECLARE dd INT;
DECLARE hh INT;
DECLARE min INT;
DECLARE ss INT;
DECLARE result VARCHAR (200) DEFAULT "";

SET n = sec;
SET yy = n DIV (60*60*24*365);
SET n = n%(60*60*24*365);
SET mm = n DIV (60*60*24*30);
SET n = n%(60*60*24*30);
SET dd = n DIV (60*60*24);
SET n = n%(60*60*24);
SET hh = n DIV (60*60);
SET n = n%(60*60);
SET min = n DIV 60;
SET ss = n%60;
SET result = CONCAT (yy, " ", "years", " ", mm, " ", "months", " ", dd, " ",
	"days", " ", hh," ", "hours", " ", min, " ", "minutes", " ", 
    ss, " ", "seconds");
SELECT result;
END $$

CALL sec_date (123456);

-- вывести четные числа от 0 до 10.
DROP PROCEDURE IF EXISTS print_numbers;
DELIMITER $$
CREATE PROCEDURE print_numbers
(
	IN imp_number INT


)

BEGIN
	DECLARE n INT;
    DECLARE result VARCHAR (45) DEFAULT "";
    
    SET n=2;
    
    REPEAT
		SET result = CONCAT (result, n, " ");
        SET n = n+2;    
		UNTIL n>= 10 -- условие выхода из цикла
	END REPEAT;
    SELECT result;

END $$
-- вызов процедуры

CALL print_numbers(4);


