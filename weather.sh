#! /bin/bash

echo "Downloading weather data"
mkdir -p ./data/weather
curl --ssl-no-revoke -o ./data/weather/`date +"%Y%m%d_%H%M%S_athenry.json"` https://prodapi.metweb.ie/observations/athenry/today
echo "Download complete"

# Keep only the last 10 JSON files in the directory if there are 11 or more
echo "Cleaning up old JSON files"
if [ $(ls -1 ./data/weather/*.json 2>/dev/null | wc -l) -ge 11 ]; then
    ls -1 ./data/weather/*.json | sort | head -n -10 | xargs -d '\n' rm -- 2>/dev/null
fi

echo "Old JSON files removed"

echo "Updating timestamps file"

date +%Y%m%d_%H%M%S_%Z >> ./data/timestamps/now.txt
date +%Y%m%d_%H%M%S_%Z >> ./computer-infrastructure/data/timestamps/now.txt

# Keep only the last 10 lines in now.txt
tail -n 10 ./data/timestamps/now.txt > ./data/timestamps/temp.txt
mv ./data/timestamps/temp.txt ./data/timestamps/now.txt
tail -n 10 ./computer-infrastructure/data/timestamps/now.txt > ./computer-infrastructure/data/timestamps/temp.txt
mv ./computer-infrastructure/data/timestamps/temp.txt ./computer-infrastructure/data/timestamps/now.txt

echo "Timestamps updated"

echo "Reading last 10 timestamps"
more ./data/timestamps/now.txt
more ./computer-infrastructure/data/timestamps/now.txt

echo "Script finished"
