
select 
    null as full_contact_name,
    null as last_name,
    null as first_name,
    null as title,
    `Operation Name` as company,
    `Address` as address1,
    null as address2,
    `City` as city,
    `State` as state,
    `Zip` as zip,
    `County` as county,
    'US' as country,
    concat("1", replace(`Phone`, '-', '')) as phone1,
    concat("1", replace(`Phone`, '-', '')) as mobile_phone,
    `Email Address` as email,
    null as website,
    null as current_enrollment,
    `Capacity` as capacity,
    null as salesforce_lead_id,
    null as is_deleted,
    'source3' as lead_source,
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
    `Facility ID` as provider_id,
    null as accepts_financial_aid,
    -- There is probably a better way to do this so that it encapsulates all possible scenarios 
    case   
        when concat(`Infant`, ', ', `Toddler`, ', ', `Preschool`, ', ', `School`) = 'true, true, true, true'
            then 'Infant, Toddler, Preschool, School'
        when concat(`Infant`, ', ', `Toddler`, ', ', `Preschool`, ', ', `School`) = 'false, true, true, true'
            then 'Toddler, Preschool, School'
        when concat(`Infant`, ', ', `Toddler`, ', ', `Preschool`, ', ', `School`) = 'true, true, true, false'
            then 'Infant, Toddler, Preschool'
        else 'Unknown'
    end as ages_served,
    null as certificate_expiration_date,
    null as curriculum_type,
    null as language,
    `Status` as license_status,
    `Issue Date` as license_issued,
    null as license_number,
    null as license_renewed,
    `Type` as license_type,
    null as licensee_name,
    -- Skipping min and max_age implementations for now in interest of time 
    null as max_age,
    null as min_age,
    null as operator,
    null as schedule,
    null as facility_type

from brightwheel.source3