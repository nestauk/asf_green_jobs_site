class Occupation < ApplicationRecord
  has_many :segments
  has_many :industries, through: :segments

  validates :name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["green_industry_rating", "green_occupation_rating", "green_overall_rating", "green_skills_rating"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["industries", "segments"]
  end
end
