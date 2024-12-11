# Computer Infrastructure

***

Repository for ATU module assessment

***

## Weather Data Analysis - Athenry

This project features an automated daily weather data analysis for Athenry using a Jupyter notebook. The data is automatically updated through GitHub Actions, ensuring fresh meteorological insights every day.

### Get Started

1. Clone the repository
2. Download necessary requirements
3. Open the Jupyter notebook
4. Manually run the Github Action "Get Weather" (optional in case the newerst weather data is needed)
5. Run all cells to see the latest weather analysis
6. Data updates automatically every 24 hours (20:00 UTC, which can be changed on the git workflow)

### Project Overview

The notebook processes daily weather data with the following features:
* Automated daily data collection via GitHub Actions
* Timestamp-based data organization
* Comprehensive meteorological parameters analysis

### Data Structure

The dataset includes hourly measurements of:
* Temperature (°C)
* Wind speed (km/h) and direction
* Humidity (%)
* Atmospheric pressure (hPa)
* Weather conditions
* Rainfall

### Technical Components

Data Processing
* pandas DataFrame operations
* Automated data type handling:
* Numerical: int64 (temperature, wind speed, pressure)
* Categorical: object (weather descriptions, wind directions)
* Temporal: datetime64 (observation timestamps)

### Automation

* Daily data collection and processing through GitHub Actions
* Automated timestamp addition
* Data validation and update procedures

### Data Freshness

The notebook maintains current data through:
* Daily automated updates
* Timestamp tracking
* Data preservation (up to 10 instances, but it can be changed for more on the code)
* Continuous data validation

### Future Enhancements

* Interactive visualizations
* Weather pattern analysis
* Historical trend comparisons
* Additional location support

Note: All statistical values in the notebook are dynamically updated daily, reflecting the most recent weather conditions in Athenry.

## Author

***

#### About me:

My name is Cainã Oliveira. I hold a Master's degree in Psychology from the [University of Porto](https://www.up.pt/portal/en/) and am currently advancing my education in data analytics through a postgraduate course at the [Atlantic Technological University: ATU](https://www.atu.ie/). Simultaneously, I am pursuing a Master's in Artificial Intelligence at the [International University of Applied Sciences](https://www.iu.org/). My academic journey reflects a strong commitment to integrating the insights of human behaviour with the cutting-edge technologies of AI and data science, aiming to harness these disciplines in innovative and impactful ways.

![IT](https://erp.today/wp-content/uploads/2022/12/Artificial_Intelligence-2048x1024.jpg)
