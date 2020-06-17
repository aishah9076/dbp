
CREATE OR REPLACE FUNCTION logis_function
(vshel shelter.shid%TYPE)

RETURN NUMBER

IS

v_total NUMBER;



BEGIN



SELECT COUNT(vid) 
INTO v_total

FROM assignment

WHERE shid=vshel

GROUP BY shid;


RETURN (v_total);



END logis_function;

/