-- general settings
-- ================
-- do not echo
set echo off
-- do not print substitution before/after text
set verify off
-- set date format
alter session set NLS_DATE_FORMAT='YYYY-MM-DD';
-- allow PL/SQL output
set serveroutput on
-- disable feedback, eg. anonymous block completed
set feedback off

-- saját objektum-eldobások (pl. saját táblák) ide
prompt <tasks>

prompt <task n="3.1">
prompt <![CDATA[

INSERT INTO passenger (p_name, dateofbirth, address, phone, tier, points)
VALUES ('Nemes Csilla', to_date('1999-09-08', 'yyyy-mm-dd'), 'Budapest, Hegyalja út 12', '52377211', 'GOLD', 5020);

prompt ]]>
prompt </task>

prompt <task n="3.2">
prompt <![CDATA[

UPDATE passenger
SET p_name = 'Seres János', tier = 'SILVER', points = 400
WHERE p_id = 28;

prompt ]]>
prompt </task>

prompt <task n="3.3">
prompt <![CDATA[

UPDATE passenger
SET points = points * 1.25
WHERE MONTHS_BETWEEN(dateofbirth, SYSDATE) < 96;

prompt ]]>
prompt </task>

prompt <task n="3.4">
prompt <![CDATA[

UPDATE passenger
SET points = points * 1.15
WHERE passenger.p_id IN 
(SELECT booking.p_id FROM booking, passenger
WHERE booking.p_id = passenger.p_id AND travel_date < to_date('2011-01-01', 'yyyy-mm-dd'));

prompt ]]>
prompt </task>

prompt <task n="3.5">
prompt <![CDATA[

DELETE FROM booking
WHERE travel_date < to_date('2009-01-01', 'yyyy-mm-dd') AND travel_date IS NOT NULL;

prompt ]]>
prompt </task>

prompt <task n="3.6">
prompt <![CDATA[

INSERT INTO booking(seat_id, p_id, flight_number, travel_date)
VALUES(
(SELECT seat_id FROM seat WHERE seat_col = 'A' AND seat_row = 22),
(SELECT p_id FROM passenger WHERE p_name = 'Simon Antal'),
'2221',
to_date('2020-11-01', 'yyyy-mm-dd')
);

prompt ]]>
prompt </task>

prompt </tasks>
