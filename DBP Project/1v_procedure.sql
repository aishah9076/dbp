CREATE OR REPLACE PROCEDURE register_vol
(
v_vid 		volunteer.vid%TYPE,
v_vname 	volunteer.v_name%TYPE,
v_vaddress	volunteer.v_address%TYPE,
v_vdob		volunteer.v_dob%TYPE,
v_vemail 	volunteer.v_email%TYPE,
v_vphone 	volunteer.v_phone%TYPE)

AS

BEGIN

--Register volunteer
INSERT INTO volunteer(VID,V_NAME,V_ADDRESS,V_DOB,V_EMAIL,V_PHONE)
VALUES (v_vid,v_vname,v_vaddress,v_vdob,v_vemail,v_vphone);
DBMS_OUTPUT.PUT_LINE('Volunteer registered');

END register_vol;
/

