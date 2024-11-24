#! /bin/bash

echo "Downloading weather data"
curl -o data/weather/`date +"%Y%m%d_%H%M%S_athenry.json"` https://prodapi.metweb.ie/observations/athenry/today
echo "Download complete"
echo "Updating timestamps file"
date +%Y%m%d_%H%M%S_%Z >> data/timestamps/now.txt
echo "Timestamps updated"
echo "Reading up to date timestamps"
more data/timestamps/now.txt
echo "Script finished"
