Sophie Lanier, Brightwheel Take Home Assignment 

General approach 
1. I turned all 4 data files into tables in BigQuery so that I could manipulate the data in dbt. I set up a BigQuery 
connection with dbt. 
2. I created a staging model for each of the 4 tables, to put them into the same format. I tried to get each staging
model set up so that it had the same column names in the same order. This part of the work was where I spent the majority of my time.
3. I began creating a final model, called "leads", which would union together all the leads from the 4 staging models. I 
spent some time trying to get all the data types to be consistent so that the union all would succeed, but decided to leave
the rest of that work for later. 
 
Tradeoffs/things I left out 
* There was a lot more I could have done to try to parse names and addresses out into their correct fields. I did some of this, 
but left a lot of it for future work since it was time-consuming. 
* I also didn't spend much time working on the Salesforce-lead-related fields, since they were null for all the input files except the
existing salesforce_leads file. If I had more time, I would've asked some followup questions about how to handle those fields for the new leads. 


Longer-term ETL strategies 
* Better handling of potentially changing file schemas. First, I'd set up a standard with the 3rd party source that they 
alert my team ahead of time if the schema is going to be changing for that month, so we have time to work on handling it. I'd also set up
tests/alerting so that if we did miss a schema change ahead of time, we can catch it when it comes up. 
* With the messiness of some data, it is hard to catch all the inconsistencies in formatting for things like phone number, address,
and name. I'd want to be much more thorough in the handling of those fields, and have some kind of alerting for cases when a new or unrecognized 
format pops up (for example, a phone number formatted as "xxx-xxx-xxxx ex.1234")
* Better handling for the Salesforce aspect of this data - if a "new" lead comes in but it's already in the table, we should consider
using a SCD table to track changes to it, or at least update the lead-related fields in the table. 
