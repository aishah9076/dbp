ACCEPT v_staff PROMPT 'Staff ID:'
ACCEPT v_shelter PROMPT 'Shelter ID:'

DECLARE 
v_total NUMBER;

BEGIN

v_total := countvolunteer(&v_staff,&v_shelter);
DBMS_OUTPUT.PUT_LINE('Total volunteer is : ' ||v_total);
IF v_total>4 THEN
DBMS_OUTPUT.PUT_LINE('ALLOCATE TO OTHER SHELTER');

END IF;

END;
/