# etl-project

- Group #5
- Kristen Lega
- William Walles
- Aline Munyansanga




### Group 5 Proposal

We will be looking at two census data sets. The first dataset set looks at 2010-2019 race and demographic data from data.world from. The second data set is from the census.gov and looks at Household Type by Relationship, by state from 2010-2019. We will be focusing on the data from 2019, and looking at single female and single male population from 2019 by state.


### Extract: Pulling in Data Sets

We pulled in the data sets to begin the cleaning process in Jupyter Notebook. The goal being to prepare the date for later merging with the other dataset. 

### Transform: Selecting Data

Starting with the race/demographic dataset we filtered the data to only focus on the state information from the year 2019. Next we pulled out the relevant columns. We wanted to only extract the state data and population breakdown.The final step for this database was to group by the counties by state and rename the columns to fit SQL needs and resetting the index.
	
When it came to the second dataset we followed a similar method of cleaning. Pulling in the data from the columns we wanted to look at. This dataset had numerous columns we were not interested in incorporating in our final table. We wanted to focus on collecting information on State (Geographic Area Name) and Males and Females living status (alone or not alone) only. The final setup was updating the column names to match the tables we were going to create in PgAdmin and resetting the index.


### Load into PgAdmin:
Prior to pulling in the clean datasets we needed to create the tables. We were sure to add an ID SERIAL as our primary key to assist in analysis later. Ensured all the columns matched and then created the new database in PgAdmin and created the tables in PgAdmin.

Using our Jupyter notebook we connected to PgAdmin and then pulled in the clean dataframes and joined them using an inner join on state name. We chose an inner join to account for one dataset incorporating data on  Puerto Rico and not the other. This resulted in one table that shows a combined view of all the data

