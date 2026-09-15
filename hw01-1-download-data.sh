#!/bin/bash

# List contents of the S3 bucket's hourly data folder
aws s3 ls s3://dsan6000-wikipedia/hourly/

# Copy the .csv files from S3 into the local data/ folder
aws s3 cp s3://dsan6000-wikipedia/hourly/ ./data/ --recursive --exclude "*" --include "*.csv"

# List the .csv files now in the local data folder
ls -lh data/*.csv
