SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT id PROMPT ' Register volunteer id: '
ACCEPT name PROMPT ' Register volunteer name: '
ACCEPT address PROMPT ' Register volunteer address: '
ACCEPT dob PROMPT ' Register volunteer date of birth: '
ACCEPT email PROMPT ' Register volunteer email: '
ACCEPT phone PROMPT ' Register volunteer phone number: '

DECLARE

BEGIN

register_vol(&id,'&name','&address','&dob','&email','&phone');

END;
/