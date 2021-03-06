-- Peter Tu

-- Package to include any functions

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

PACKAGE MY_PACKAGE IS
	FUNCTION CountOnesFunc (SLV : STD_LOGIC_VECTOR) RETURN INTEGER;
END PACKAGE MY_PACKAGE;

PACKAGE BODY MY_PACKAGE IS
	FUNCTION CountOnesFunc (SLV : STD_LOGIC_VECTOR) RETURN INTEGER IS
		VARIABLE SUM_ONES : INTEGER := 0;	
	BEGIN
		FOR i IN SLV'RANGE LOOP
			IF (SLV(i) = '1') THEN
				SUM_ONES := SUM_ONES + 1;
			END IF;
		END LOOP;

	RETURN SUM_ONES;

	END FUNCTION CountOnesFunc;
	
END PACKAGE BODY MY_PACKAGE;