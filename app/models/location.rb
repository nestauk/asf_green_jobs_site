class Location < ApplicationRecord
  belongs_to :occupation
  belongs_to :region
end
