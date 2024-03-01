require 'csv'

class Occupation < ApplicationRecord
  has_many :segments
  has_many :industries, through: :segments
  has_many :locations
  has_many :regions, through: :locations

  validates :avg_num_skills, :green_industry_rating, :green_occupation_rating,
            :green_overall_rating, :green_skills_rating, :green_timeshare,
            :name, :num_job_ads, :prop_green_skills, :description, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["name", "green_industry_rating", "green_occupation_rating", "green_overall_rating", "green_skills_rating"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["industries", "locations", "regions", "segments"]
  end

  def self.to_csv(iterable)
    CSV.generate do |csv|
      heading_row = %w[
        name
        occupation_description
        num_job_ads
        percentage_green_skills
        time_on_green_tasks
        industry_emissions
        green_skills_rating
        green_occupation_rating
        green_industry_rating
        most_common_green_skills
        most_common_not_green_skills
        median_min_annualised_salary
        median_max_annualised_salary
      ]
      csv << heading_row

      iterable.each do |o|
        data_row = [
          o.name,
          o.description,
          o.num_job_ads,
          o.prop_green_skills,
          o.green_timeshare,
          o.average_ind_perunit_ghg,
          o.green_skills_rating,
          o.green_occupation_rating,
          o.green_industry_rating,
          o.top_green_skills,
          o.top_not_green_skills,
          o.median_min_annualised_salary,
          o.median_max_annualised_salary
        ]
        csv << data_row
      end
    end
  end

  def ordered_regions
    regions.order('locations.percentage': 'DESC')
  end
end
