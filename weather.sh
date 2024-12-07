#! /bin/bash

echo "Downloading weather data"
mkdir -p ./data/weather
curl --ssl-no-revoke -o ./data/weather/`date +"%Y%m%d_%H%M%S_athenry.json"` https://prodapi.metweb.ie/observations/athenry/today
echo "Download complete"

# Keep only the last 10 JSON files in the directory if there are 11 or more
echo "Cleaning up old JSON files"
if [ $(ls -1 ./data/weather/*.json 2>/dev/null | wc -l) -ge 11 ]; then
    ls -tp ./data/weather/*.json | grep -v '/$' | tail -n +11 | xargs -d '\n' rm -- 2>/dev/null
fi

echo "Old JSON files removed"

echo "Updating timestamps file"
date +%Y%m%d_%H%M%S_%Z >> ./computer-infrastructure/data/timestamps/now.txt

# Keep only the last 10 lines in now.txt
tail -n 10 ./computer-infrastructure/data/timestamps/now.txt > ./computer-infrastructure/data/timestamps/temp.txt
mv ./computer-infrastructure/data/timestamps/temp.txt ./computer-infrastructure/data/timestamps/now.txt

echo "Timestamps updated"

echo "Reading last 10 timestamps"
more ./computer-infrastructure/data/timestamps/now.txt

echo "Script finished"
