#!/bin/bash

# Navigate to the location where the zip file is stored
cp s3://codepipeline-us-west-2-598491907540/SamplePipelineDemo/BuildArtif/*.zip /tmp
cd /tmp

# Unzip the artifact
unzip *.zip -d /var/www/html

# Ensure the extracted files have the appropriate permissions (adjust as needed)
chown -R www-data:www-data /var/www/html
