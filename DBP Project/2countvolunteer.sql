CREATE OR REPLACE FUNCTION countvolunteer
(vstaff shelter.sid%TYPE,vshel shelter.shid%TYPE)
RETURN NUMBER
is
v_total number;

BEGIN

SELECT COUNT(vid)
INTO v_total
FROM assignment JOIN shelter USING (shid)
WHERE sid=vstaff
group by sid;

RETURN(v_total);

END countvolunteer;
/


