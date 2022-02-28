copy users from 's3://bucket-red/tickitdb/allusers_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::655214307292:role/MiRolRedShift' 
delimiter '|' region 'us-east-2';

copy venue from 's3://bucket-red/tickitdb/venue_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::655214307292:role/MiRolRedShift' 
delimiter '|' region 'us-east-2';

copy category from 's3://bucket-red/tickitdb/category_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::655214307292:role/MiRolRedShift' 
delimiter '|' region 'us-east-2';

copy date from 's3://bucket-red/tickitdb/date2008_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::655214307292:role/MiRolRedShift' 
delimiter '|' region 'us-east-2';

copy event from 's3://bucket-red/tickitdb/allevents_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::655214307292:role/MiRolRedShift' 
delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region 'us-east-2';

copy listing from 's3://bucket-red/tickitdb/listings_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::655214307292:role/MiRolRedShift' 
delimiter '|' region 'us-east-2';

copy sales from 's3://bucket-red/tickitdb/sales_tab.txt'
credentials 'aws_iam_role=arn:aws:iam::655214307292:role/MiRolRedShift'
delimiter '\t' timeformat 'MM/DD/YYYY HH:MI:SS' region 'us-east-2';