#! /bin/bash

echo "
[default]
aws_access_key_id = $KEY_ID
aws_secret_access_key = $ACCESS_KEY
" >  ~/.aws/credentials \
&& python /app/run.py \
&& echo $CF_VOLUME_PATH/env_vars_to_export \
&& cat $CF_VOLUME_PATH/env_vars_to_export;