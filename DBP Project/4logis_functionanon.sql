
ACCEPT v_shelter PROMPT 'Shelter ID: '



DECLARE 
v_total NUMBER;



BEGIN

 

v_total := logis_function(&v_shelter);

DBMS_OUTPUT.PUT_LINE('Total number of volunteers: '||v_total);



IF v_total=2 THEN

DBMS_OUTPUT.PUT_LINE('Logistic Packs/Month: 25');



ELSIF v_total>=3 AND v_total<=5 THEN

	DBMS_OUTPUT.PUT_LINE('Logistic Packs/Month: 60');


ELSE

	DBMS_OUTPUT.PUT_LINE('No logistic packs');



END IF;



END;

/