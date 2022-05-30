#!/bin/bash

file_l=`ls ????_survey.pdf`
for file_i in ${file_l[@]};
do
    pdf2txt.py -M 100 -L 2 ${file_i} > ../converted/${file_i%%.*}.csv
done
