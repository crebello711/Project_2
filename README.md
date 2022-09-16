# Project_2 : COVID-19 data

For this project, we decided to use Covid-19 vaccine data (https://www.kaggle.com/datasets/paultimothymooney/usa-covid19-vaccinations) and Covid-19 case data (https://data.cdc.gov/Case-Surveillance/COVID-19-Case-Surveillance-Public-Use-Data-with-Ge/n8mc-b4w4).

Below are the steps we followed :

![Process](Resources/Picture1.png)

* We extracted data from Kaggle's database of Covid-19 vaccination data doing an API pull request and a read function in python. The data was cleaned and extracted into  two dataframes. To review script please click [Joint_Notebook](Joint_Notebook.ipynb)

* Next we loaded those dataframe into postgresql using SQLAlchemy.
![Database Design](SQL_schema_&_queries/QuickDBD-export.png)

* Finally, we created tables and schema to write queries against thes tables.To review the schema and tables: [SQL_schema_&_queries](SQL_schema_&_queries)


