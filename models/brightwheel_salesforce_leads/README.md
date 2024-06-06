Sophie Lanier, Brightwheel Take Home Assignment 

General approach 
1. I turned all 4 data files into tables in BigQuery so that I could manipulate the data in dbt. I set up a BigQuery 
connection with dbt. 
2. I created a staging model for each of the 4 tables, to put them into the same format. I tried to get each staging
model set up so that it had the same column names in the same order. This part of the work was where I spent the majority of my time.
3. I began creating a final model, called "leads", which would union together all the leads from the 4 staging models. I 
spent some time trying to get all the data types to be consistent so that the union all would succeed, but decided to leave
the rest of that work for later. 
 
