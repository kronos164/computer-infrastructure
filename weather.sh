#! /bin/bash

echo "Downloading weather data"
curl -o data/weather/`date +"%Y%m%d_%H%M%S_athenry.json"` https://prodapi.metweb.ie/observations/athenry/today
echo "Download complete"
echo "Updating timestamps file"
date +%Y%m%d_%H%M%S_%Z >> data/times/timestamps_athenry.txt
echo "Timestamps updated"
echo "Script finished"
