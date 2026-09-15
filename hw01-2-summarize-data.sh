#!/bin/bash

echo "filename,size,num_lines" > wikimedia_data_summary.csv

for f in data/*.csv; do
  filename=$(basename "$f")
  size=$(ls -lh "$f" | awk '{print $5}')
  num_lines=$(wc -l < "$f")
  echo "$filename,$size,$num_lines" >> wikimedia_data_summary.csv
done
