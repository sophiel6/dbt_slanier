/*

last_name
first-name
title
company
street as address1
null as address2
city
state
postal_code as zip
country
phone as phone1
mobile_phone 
email
website
current_enrollment_c as current_enrollment,
capacity_c as capacity,
  ,
  brightwheel_school_uuid_c as provider_id


leads table
salesforce_lead_id
lead_source,
  status,
  is_converted,
  created_date,
  last_modified_date,
  last_activity_date,
  last_viewed_date,
  last_referenced_date,
  email_bounced_date,
  email_bounced_reason,
  outreach_stage_c,
lead_source_last_updated_c


accepts_financial_aid character varying
ages_served character varying
--capacity numeric
certificate_expiration_date date
--city character varying
--address1 character varying
--address2 character varying
--company character varying
--phone character varying
--phone2 character varying
--county character varying
curriculum_type character varying
--email character varying
--first_name character varying
language character varying
--last_name character varying
license_status character varying
license_issued date
license_number numeric
license_renewed date
license_type character varying
licensee_name character varying
max_age numeric
min_age numeric
operator character varying
--provider_id character varying
schedule character varying
--state character varying
--title character varying
--website_address character varying
--zip character varying
facility_type character varying
*/

SELECT 
    id as salesforce_lead_id,
    is_deleted,
    last_name,
    first_name,
    title,
    company,
    street as address1,
    null as address2,
    city,
    state,
    postal_code as zip,
    null as county,
    country,
    phone as phone1,
    mobile_phone,
    email,
    website,
    current_enrollment_c as current_enrollment,
    capacity_c as capacity,
    salesforce_lead_id
    lead_source,
    status,
    is_converted,
    created_date,
    last_modified_date,
    last_activity_date,
    last_viewed_date,
    last_referenced_date,
    email_bounced_date,
    email_bounced_reason,
    outreach_stage_c as outreach_stage,
    lead_source_last_updated_c as lead_source_last_updated,
    brightwheel_school_uuid_c as provider_id,
    null as accepts_financial_aid,
    null as ages_served,
    null as certificate_expiration_date,
    null as curriculum_type,
    null as language,
    null as license_status,
    null as license_issued,
    null as license_number,
    null as license_renewed,
    null as license_type,
    null as licensee_name,
    null as max_age,
    null as min_age,
    null as operator,
    null as schedule,
    null as facility_type

FROM brightwheel-takehome.brightwheel.salesforce_leads