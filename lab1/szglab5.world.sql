column grantor format a8;
column grantee format a8;
column table_name format a20;
column privilege format a20;
select grantor
, grantee
, table_name
, privilege
, initcap(grantable) grant_opt
from all_tab_privs
where grantor = user
or grantee = user
order by grantor, grantee, table_name, privilege
