class Industry < ApplicationRecord
  has_many :segments
  has_many :occupations, through: :segments

  validates :name, presence: true
end
