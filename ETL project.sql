--create demographic
create table demographic (
    ID SERIAL PRIMARY KEY ,
    state varchar not null,
    pop INT not null,
    white_pop INT not null,
    black_pop INT not null,
    asian_pop INT not null,
    indian_pop INT not null,
    pacific_pop INT not null,
    mixed_race_pop INT not null,
    not_hispanic_pop INT not null,
    hispanic_pop INT not null,

)
--create household data
create table household (
    ID SERIAL PRIMARY KEY ,
    state varchar not null,
    male_alone INT not null,
    male_not_alone INT not null,
    female_alone INT not null,
    female_not_alone INT not null
);


--Join demographic and household
--SELECT demographic.pop, demographic.white_pop, demographic.black_pop,demographic.asian_pop,
--demographic.indian_pop,demographic.pacific_pop,demographic.mixed_race_pop,demographic.no_hispanic_pop,
--demographic.hispanic_pop,household.male_alone,household.male_not_alone,household.female_alone,household.female_not_alone,
SELECT *
FROM demographic
INNER JOIN household
ON demographic.state = household.state;
