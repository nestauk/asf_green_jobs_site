require 'csv'

class Occupation < ApplicationRecord
  has_many :segments
  has_many :industries, through: :segments
  has_many :locations
  has_many :regions, through: :locations

  validates :avg_num_skills, :green_industry_rating, :green_occupation_rating,
            :green_overall_rating, :green_skills_rating, :green_timeshare,
            :green_topics_count, :name, :num_job_ads, :prop_green_skills,
            :description, :median_min_annualised_salary, :median_max_annualised_salary,
            presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["green_industry_rating", "green_occupation_rating", "green_overall_rating", "green_skills_rating"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["industries", "segments", "regions", "locations"]
  end

  def self.to_csv(iterable)
    CSV.generate do |csv|
      filtered_columns = column_names.excluding("id", "created_at", "updated_at", "top_green_skills", "top_not_green_skills")
      csv << filtered_columns + ["top_green_skills", "top_not_green_skills", "industries"]
      iterable.each do |occupation|
        top_green_skills = occupation.top_green_skills.to_json
        top_not_green_skills = occupation.top_not_green_skills.to_json
        industries = occupation.industries.select(:name, :sic_code).to_json
        csv << occupation.attributes.values_at(*filtered_columns) + [top_green_skills, top_not_green_skills, industries]
      end
    end
  end

  def ordered_regions
    regions.order('locations.percentage': 'DESC')
  end
end
