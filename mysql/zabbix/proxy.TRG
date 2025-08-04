TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger proxy_insert after insert on proxy\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (19,new.proxyid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger proxy_update after update on proxy\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (19,old.proxyid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger proxy_delete before delete on proxy\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (19,old.proxyid,3,unix_timestamp())'
sql_modes=1436549152 1436549152 1436549152
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=174850981561 174850981561 174850981561
