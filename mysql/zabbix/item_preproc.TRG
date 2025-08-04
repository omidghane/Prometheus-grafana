TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger item_preproc_insert after insert on item_preproc\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (8,new.item_preprocid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger item_preproc_update after update on item_preproc\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (8,old.item_preprocid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger item_preproc_delete before delete on item_preproc\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (8,old.item_preprocid,3,unix_timestamp())'
sql_modes=1436549152 1436549152 1436549152
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=174850981558 174850981558 174850981558
