class Region < ApplicationRecord
  has_many :locations
  has_many :occupations, through: :locations

  validates :name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["id"]
  end
end
