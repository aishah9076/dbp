CREATE OR REPLACE PROCEDURE register_staff
(v_sid 		staff.SID%TYPE,
v_sname 	staff.s_name%TYPE,
v_saddress	staff.s_address%TYPE,
v_semail 	staff.s_email%TYPE,
v_sphone 	staff.s_phone%TYPE)

AS

BEGIN
--Register staff
INSERT INTO staff(SID,S_NAME,S_ADDRESS,S_EMAIL,S_PHONE)
VALUES (v_sid,v_sname,v_saddress,v_semail,v_sphone);
DBMS_OUTPUT.PUT_LINE('Staff registered');

END register_staff;
/










