# Project 4
## Stock Predictions and Analysis 

### Assisting users with making rationale and profitable stock selections to increase value of portfolio

```
Collaborators: Nathan Payne, Kamran Shirazi, Alex De la o, 
               Kevin Lopez and Drew Barnhart
```

## Purpose
> The purpose of this project is to create a predictive model that can assist users in analyzing financial data in real-time. The predictive model will be able to provide users with financial information such as stock prices and other relevant financial data. The predictive model will also be able to answer questions related to financial news, trends, and market updates. It will be designed to analyze financial data and provide users with insights and recommendations based on their financial goals and preferences. 
> 
> - Source: S&P Dow Jones Indices LLC, Dow Jones Industrial Average [DJIA], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/DJIA, May 16, 2023.

> - Second Source (For additional years): https://www.investing.com/indices/us-30-historical-data

## Objectives

### The objectives for this process were divided into several subsections: 

#### SQL
![Most profitable month](https://github.com/kshirazi5/Project-4/assets/116853144/5c760648-abd8-4a48-bbfa-e8f44074a905)
October 2022 had the highest growth rate between 2013-2022.

![interest rate 2017-2019 growth percentage](https://github.com/kshirazi5/Project-4/assets/116853144/6c0636a2-d17e-421a-8aea-471f9553cc62)

![interest rate 2020-2022](https://github.com/kshirazi5/Project-4/assets/116853144/bc79eb5d-c37d-4102-9179-f00a3867c38f)
2020-2022 had the highest interest rate increases.

![President (2016-2020)](https://github.com/kshirazi5/Project-4/assets/116853144/84575b23-ec99-43be-a996-3ecd1b8ddce6)
![President 2020-2023](https://github.com/kshirazi5/Project-4/assets/116853144/3585e380-7bd2-468f-8203-3ed9703a2b20)
The 2016-2020 presidential cycle had the highest S&P500 growth rate. This is most likely due to lower interest rates during this period.

#### Tableau


<img width="544" alt="image" src="https://github.com/kshirazi5/Project-4/assets/116226080/b85eceea-fd49-4bbb-8a1b-2ffbc69f7dff">

Initial Tableau analysis using an area graph to compare the S&P 500 to the Dow Jones graph over a 10 year perid of time 

```
```


<img width="509" alt="image" src="https://github.com/kshirazi5/Project-4/assets/116226080/11c83d0b-779d-437e-b2c1-8ba4d1154323">

Excerpt from section of code that pulled CSV files, created dataframes, dropped and specified column types, and combined dataframes to organize data for comparative analysis in Tableau

```
```


<img width="794" alt="image" src="https://github.com/kshirazi5/Project-4/assets/116226080/3e47b0a5-8f1b-4841-86a6-0c074c6e89c2">

Historical Graph displaying value of dow jones since 1979 (When digital records begin to be recorded)

```
```

<img width="660" alt="image" src="https://github.com/kshirazi5/Project-4/assets/116226080/2b4f8f28-4f8b-4ff6-80f2-177e9b229e9b">

The next bar graph illustrated the annual averages and continues the comparison between the S&P500 and Dow Jones 

```
```

<img width="628" alt="image" src="https://github.com/kshirazi5/Project-4/assets/116226080/2ec200fd-981f-40a7-b220-cf2ce8b4d049">

Comparative analysis of the Dow Jones vs several commotities (including: Oil, Gold, and soybeans)

#### Python
![Stock_prediction](https://github.com/kshirazi5/Project-4/assets/117046550/7f78766e-3211-4c58-8e32-a480350e0768)


## Analysis
<img width="1301" alt="Fed Funds Rate Graph" src="https://github.com/kshirazi5/Project-4/assets/116853144/da587251-3da4-4bb8-8f05-cb9c46009c4b">
<img width="1307" alt="S P500 chart" src="https://github.com/kshirazi5/Project-4/assets/116853144/4f9e5c7f-df85-46b7-aa22-973a85cbb737">


https://fred.stlouisfed.org/series/FEDFUNDS#0
https://fred.stlouisfed.org/series/SP500



## Limitations

- Initial data set from Fred was limiteed to a 10 year incrememnt (2013-2023). Forr analyzing recent/short term economic patterns this isnt an issue, but for predicting future trends and understanding long term economic cycles, a larger data set of increased years would be preferable
- In Tableau we were able to integrate multiple CSV's and create comparative analysis, however for the Machine Learning, a larger set would be preferable


## Summary



## Software Used:

> - to_sql
> - Tableau
> - Python
> - SQLite
> - HTML
> - Jupyter Notebook


### Functions used: 
> - Pandas
> - SkLearn

