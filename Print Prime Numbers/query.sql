/**
 *  Problem: https://www.hackerrank.com/challenges/print-prime-numbers/problem
 *  Print Prime Numbers
*/
SET @i = 2;
SET @isPrimeNumber = 0;
SET @result = "";

DELIMITER $$
CREATE PROCEDURE PrimeNumber(IN num INT) 
    BEGIN
        WHILE @i <= num DO
           
            SET @isPrimeNumber = 1;
            SET @j = @i - 1;
            
            IF MOD(@i, 2) = 0 AND @i <> 2 THEN -- tutti i numeri pari non sono numeri primi tranne per il numero 2
                SET @isPrimeNumber = 0;
            END IF;
            
            WHILE @j > 1 DO
                
                IF MOD(@i, @j) = 0 THEN -- otteniamo i numeri che sono divisibili solo con se stessi e per 1, quindi con modulo uguale a 0.
                    SET @isPrimeNumber = 0;
                END IF;
                
                SET @j = @j - 1;
                
            END WHILE;
            
            IF @isPrimeNumber = 1 THEN
                SET @result = CONCAT(@result, @i, '&');
            END IF;
            
            SET @i = @i + 1;
            
        END WHILE;
        
        SET @result = SUBSTR(@result, 1, LENGTH(@result)-1);
        SELECT @result;
    
    END $$
DELIMITER ;

CALL PrimeNumber(1000);
