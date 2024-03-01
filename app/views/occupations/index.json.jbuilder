json.array! @occupations do |occupation|
  json.occupation occupation.name
  json.occupation_description occupation.description
  json.num_job_ads occupation.num_job_ads
  json.percentage_green_skills occupation.prop_green_skills
  json.time_on_green_tasks occupation.green_timeshare
  json.industry_emissions occupation.average_ind_perunit_ghg
  json.green_skills_rating occupation.green_skills_rating
  json.green_occupation_rating occupation.green_occupation_rating
  json.green_industry_rating occupation.green_industry_rating
  json.most_common_green_skills occupation.top_green_skills
  json.most_common_not_green_skills occupation.top_not_green_skills
  json.median_min_annualised_salary occupation.median_min_annualised_salary
  json.median_max_annualised_salary occupation.median_max_annualised_salary
end
