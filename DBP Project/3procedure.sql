
CREATE OR REPLACE PROCEDURE record_detail

(v_vid 		IN assignment.vid%TYPE,

v_startdate 	IN assignment.start_date%TYPE,

v_job_role 	OUT assignment.job_role%TYPE,

v_shname 	OUT shelter.sh_name%TYPE,

v_sname	OUT staff.s_name%TYPE)


AS


BEGIN


SELECT job_role, sh_name, s_name

INTO v_job_role, v_shname, v_sname

FROM (staff JOIN shelter USING (sid))

JOIN assignment

USING (shid)

WHERE vid = v_vid AND start_date = v_startdate;


END;

/

