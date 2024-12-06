#! /bin/bash

echo "Downloading weather data"
mdr data/weather
curl -o data/weather/`date +"%Y%m%d_%H%M%S_athenry.json"` https://prodapi.metweb.ie/observations/athenry/today

echo "Download complete"

# Keep only the last 10 JSON files in the directory
echo "Cleaning up old JSON files"
ls -tp data/weather/*.json | grep -v '/$' | tail -n +11 | xargs -d '\n' rm -- 2>/dev/null

echo "Old JSON files removed"

echo "Updating timestamps file"
date +%Y%m%d_%H%M%S_%Z >> data/timestamps/now.txt

# Keep only the last 10 lines in now.txt
tail -n 10 data/timestamps/now.txt > data/timestamps/temp.txt
mv data/timestamps/temp.txt data/timestamps/now.txt

echo "Timestamps updated"

echo "Reading last 10 timestamps"
more data/timestamps/now.txt

echo "Script finished"
