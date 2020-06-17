
ACCEPT vol_id 	PROMPT 'Enter volunteer id: '

ACCEPT startdate 	PROMPT 'Enter the start date: '


DECLARE

v_job_role assignment.job_role%TYPE;

v_shname shelter.sh_name%TYPE;

v_sname staff.s_name%TYPE;


BEGIN


record_detail('&vol_id', '&startdate', v_job_role, v_shname, v_sname);



DBMS_OUTPUT.PUT_LINE('Job Role: '||v_job_role);

DBMS_OUTPUT.PUT_LINE('Shelter Name: '||v_shname);

DBMS_OUTPUT.PUT_LINE('Staff Name: '||v_sname);


END;

/

