TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger host_tag_insert after insert on host_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (2,new.hosttagid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger host_tag_update after update on host_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (2,old.hosttagid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger host_tag_delete before delete on host_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (2,old.hosttagid,3,unix_timestamp())'
sql_modes=1436549152 1436549152 1436549152
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=174850981559 174850981560 174850981560
