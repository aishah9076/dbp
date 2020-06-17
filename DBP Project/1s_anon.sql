SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT id PROMPT ' Register staff id: '
ACCEPT name PROMPT ' Register staff name: '
ACCEPT address PROMPT ' Register staff address: '
ACCEPT email PROMPT ' Register staff email: '
ACCEPT phone PROMPT ' Register staff phone number: '

DECLARE

BEGIN

register_staff(&id,'&name','&address','&email','&phone');

END;
/