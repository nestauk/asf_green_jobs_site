class Occupation < ApplicationRecord
  has_many :segments
  has_many :industries, through: :segments

  validates :avg_num_skills, :green_industry_rating, :green_occupation_rating,
            :green_overall_rating, :green_skills_rating, :green_timeshare,
            :green_topics_count, :name, :num_job_ads, :prop_green_skills,
            presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["green_industry_rating", "green_occupation_rating", "green_overall_rating", "green_skills_rating"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["industries", "segments"]
  end
end
