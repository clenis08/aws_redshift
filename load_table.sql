unload ('select * from info_event')
to 's3://bucket-red/new_data/info_event_'
credentials 'aws_iam_role=arn:aws:iam::655214307292:role/MiRolRedShift';