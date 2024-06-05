select
    regexp_extract(`Primary Caregiver`, r'\w+\s+\w+') as full_contact_name,
    split(regexp_extract(`Primary Caregiver`, r'\w+\s+\w+'), ' ')[offset(1)] as last_name,

    split(regexp_extract(`Primary Caregiver`, r'\w+\s+\w+'), ' ')[offset(0)] as first_name,
    case
        when `Primary Caregiver` like '%Primary Caregiver%'
        then 'Primary Caregiver'
        when `Primary Caregiver` like '%Director%'
        then 'Director'
        else null
    end as title,

    `Company` as company,
    `Address1` as address1,
    `Address2` as address2,
    `City` as city,
    `State` as state,
    `Zip` as zip,
    null as county,
    'US' as country,
    
    concat(
        "1", replace(replace(replace(replace(`Phone`, '-', ''), '(', ''), ')', ''), ' ', '')
    ) as phone1,
    concat(
        "1", replace(replace(replace(replace(`Phone`, '-', ''), '(', ''), ')', ''), ' ', '')
    ) as mobile_phone,
    `Email` as email,
    null as website,
    null as current_enrollment,
    `Total Cap` as capacity,
    null as salesforce_lead_id,
    null as is_deleted,
    'source2' as lead_source, 
    null as status,
    null as is_converted,
    current_date as created_date,
    null as last_modified_date,
    null as last_activity_date,
    null as last_viewed_date,
    null as last_referenced_date,
    null as email_bounced_date,
    null as email_bounced_reason,
    null as outreach_stage,
    null as lead_source_last_updated,
    null as provider_id, 
    case
        when `Accepts Subsidy` like '%Accepts Subsidy%' then 'Y' else 'N'
    end as accepts_financial_aid,
    
    concat(
        `Ages Accepted 1`, ' ', coalesce(`AA2`, ''), ' ', coalesce(`AA3`, ''), ' ', coalesce(`AA4`, '')
    ) as ages_served, 
    null as certificate_expiration_date,
    null as curriculum_type,
    null as language,
    null as license_status,
    cast(right(`License Monitoring Since`, 10) as date) as license_issued,
    null as license_number,
    null as license_renewed,
    `Type License` as license_type,
    null as licensee_name, 
    case
        when `AA4` is null
        then
            case
                when `AA3` is null
                then 
                    case when `AA2` is null then `Ages Accepted 1` 
                    else `AA2` end
                else `AA3`
            end
        else `AA4`
    end as max_age, 
    `Ages Accepted 1` as min_age,
    null as operator,
    null as schedule,
    null as facility_type 
    
from brightwheel-takehome.brightwheel.source2
