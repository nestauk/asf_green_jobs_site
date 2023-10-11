class Industry < ApplicationRecord
  has_many :segments
  has_many :occupations, through: :segments

  validates :name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["id"]
  end
end
