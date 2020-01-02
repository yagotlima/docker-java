#!/bin/bash

wget https://www.iana.org/time-zones/repository/tzdata-latest.tar.gz
mkdir tzdata
tar -xzf tzdata-latest.tar.gz -C tzdata
rm tzdata-latest.tar.gz
sed -i 's/Sep\tSat>=8\t25:00/Sep\tSun>=9\t0:00/' tzdata/asia
tar -czf tzdata-latest.tar.gz -C ./tzdata `ls tzdata`
rm -r tzdata
