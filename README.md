# Computer Infrastructure

Repository for ATU module assessment

***

# **Weather Data Analysis - Athenry**

This project features an automated daily weather data analysis for Athenry using a Jupyter notebook. The data is automatically updated through GitHub Actions, ensuring fresh meteorological insights every day.

This repository contains:

- **Bash Script**: Automates daily weather data collection from Met Éireann.
- **Jupyter Notebook**: Processes and analyzes the collected weather data, providing insights into meteorological trends for Athenry.

The automation is powered by **GitHub Actions**, ensuring fresh data is fetched and updated every day.

---

### Get Started

### Prerequisites

**System Requirements**:
   - Python 3.8+
   - Bash Shell
**Dependencies**:
   - Install the required Python libraries from `requirements.txt`.

---

### Running the Project

---

#### Option 1: On Your Local Machine

**Using Visual Studio Code and Anaconda:**

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/weather-data-analysis.git
   cd weather-data-analysis
   ```
2. Install dependencies:
   ```bash
   conda create --name weather_env python=3.8
   conda activate weather_env
   pip install -r requirements.txt
   ```
3. Run the Bash script to fetch the most recent weather data (optional):
   ```bash
   ./weather.sh
   ```
4. Open the Jupyter Notebook:
   - Launch VS Code.
   - Open the repository folder.
   - Start the Jupyter extension and open `weather.ipynb`.
   - Run all cells to analyze the data.

---

#### Option 2: Using GitHub Codespaces

1. Open the repository on GitHub and click **"Code" > "Codespaces" > "Create Codespace"**.
2. GitHub Codespaces will automatically set up the environment.
3. Open `weather.ipynb` in the integrated Jupyter environment.
4. Run all cells to process and analyze the weather data.

---

#### Fetching the data with GitHub action:

You can manually run the Github Action `Get Weather from Met Éireann` (optional in case the newest weather data is needed)

1. Open the repository on GitHub and click **"Actions" > "Get Weather from Met Éireann" > "Run workflow"**.
2. Then open `weather.ipynb`.
3. Run all cells to analyze the data.

Note: Data updates automatically every 24 hours (20:00 UTC, which can be changed on the git workflow `.yml` file)

---

## Repository Structure

```
weather-data-analysis/
|
├── data/              # Folder for storing downloaded weather data
├── weather.sh         # Bash script for data collection
├── weather.ipynb      # Jupyter notebook for data analysis
├── requirements.txt   # Python dependencies
├── .github/workflows/ # GitHub Actions workflow
|
```

---

### Project Overview

The notebook processes daily weather data with the following features:
* Automated daily data collection via GitHub Actions
* Timestamp-based data organization
* Comprehensive meteorological parameters analysis

---

### Data Structure

The dataset includes hourly measurements of:
* Temperature (°C)
* Wind speed (km/h) and direction
* Humidity (%)
* Atmospheric pressure (hPa)
* Weather conditions
* Rainfall

---

### Technical Components

Data Processing
* pandas DataFrame operations
* Automated data type handling:
* Numerical: int64 (temperature, wind speed, pressure)
* Categorical: object (weather descriptions, wind directions)
* Temporal: datetime64 (observation timestamps)

---

### Automation

* Daily data collection and processing through GitHub Actions
* Automated timestamp addition
* Data validation and update procedures

---

### Data Freshness

The notebook maintains current data through:
* Daily automated updates
* Timestamp tracking
* Data preservation (up to 10 instances, but it can be changed for more on the code)
* Continuous data validation

Note: The data preservation can be changed to a historical one in case you decide to keep all the files and/or timestamps. It is only necessary to delete this feature on the `weather.sh` script

---

### Future Enhancements

* Interactive visualizations
* Weather pattern analysis
* Historical trend comparisons
* Additional location support

Note: All statistical values in the notebook are dynamically updated daily, reflecting the most recent weather conditions in Athenry.


---
---

## Author


#### About me:

My name is Cainã Oliveira. I hold a Master's degree in Psychology from the [University of Porto](https://www.up.pt/portal/en/) and am currently advancing my education in data analytics through a postgraduate course at the [Atlantic Technological University: ATU](https://www.atu.ie/). Simultaneously, I am pursuing a Master's in Artificial Intelligence at the [International University of Applied Sciences](https://www.iu.org/). My academic journey reflects a strong commitment to integrating the insights of human behaviour with the cutting-edge technologies of AI and data science, aiming to harness these disciplines in innovative and impactful ways.

![IT](https://erp.today/wp-content/uploads/2022/12/Artificial_Intelligence-2048x1024.jpg)
