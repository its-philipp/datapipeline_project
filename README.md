# Data Engineering - Automated Data Pipeline

## Project Objective
In this project I used web scraping and API calls to get the desired data from websites like wikipedia, openweathermap or rapidapi. This pulled data I cleaned and transformed into tables, which I pushed to a SQL database, which I created beforehand and have connected to the AWS Cloud. In the last step I created AWS lambda functions and scheduled them within the AWS EventBridge manager to get this datapipeline triggered automatically once a day.
For more detailed steps and information please read my [article on medium](https://medium.com/@philipp-trinh/first-steps-into-data-engineering-efcc5acbf79a)

## Libraries and Dependencies
- pandas
- requests
- bs4
- json
- datetime
- sqlalchemy
- os
- re
- pytz
