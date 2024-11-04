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

prompt <task n="2">
prompt <![CDATA[

CREATE TABLE utasok (
    id NUMBER (8) NOT NULL,
    azonosito NUMBER (8) NOT NULL,
    nev CHAR (45) NOT NULL,
    szul.datum DATE,
    lakcim CHAR (45) NOT NULL,
    tel.szam NUMBER (12),
    klubtagsag CHAR (8),
    pontok NUMBER (5));

CREATE TABLE ulesek (
    id NUMBER (8) NOT NULL,
    ulesszam CHAR (15) NOT NULL,
    business NUMBER (1));

CREATE TABLE utazas (
    id NUMBER (8) NOT NULL,
    jaratszam NUMBER (10) NOT NULL,
    datum DATE NOT NULL,
    fogl_datum DATE);

-- 2-es feladat megoldása ide

prompt ]]>
prompt </task>

prompt <task n="1.2">
prompt <![CDATA[

-- 1.2-es feladat megoldása ide

prompt ]]>
prompt </task>

-- így tovább, a feladatmegoldásokat közrefogó két-két nyitó és záró prompt sor ismétlődik értelemszerűen, a task tag n attribútumának értéke az adott feladat száma.

-- az adatmanipuláció feladatai előtt szükséges kiadni
set feedback on

prompt <task n="4.1">
prompt <![CDATA[  

-- 4.1-es feladat megoldása ide

prompt ]]>
prompt </task>
prompt <task n="4.2">
prompt <![CDATA[

-- 4.2-es feladat megoldása ide

prompt ]]>
prompt </task>
prompt <task n="4.3">
prompt <![CDATA[

-- 4.3-as feladat megoldása ide

prompt ]]>
prompt </task>

-- az adatmanipuláció feladatai után szükséges kiadni
set feedback off

prompt <task n="5.1">
prompt <![CDATA[ 

-- 5.1-es feladat megoldása ide

prompt ]]>
prompt </task>
prompt </tasks>
