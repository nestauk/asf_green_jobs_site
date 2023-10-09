class Occupation < ApplicationRecord
  has_many :segments
  has_many :industries, through: :segments

  validates :name, presence: true
end
