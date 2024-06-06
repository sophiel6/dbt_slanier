
/* This model combines all the leads from the 4 input files. 
    It currently won't run successfully, because of some issues with datatypes not matching
    between all the tables. That is the first thing I'd address given more time. */
    
select *
from {{ ref('stg_salesforce_leads')}}

union all

select *
from {{ ref('stg_source1')}}

union all

select *
from {{ ref('stg_source2')}}

union all 

select *
from {{ ref('stg_source3')}}
