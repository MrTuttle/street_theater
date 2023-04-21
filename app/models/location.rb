class Location < ApplicationRecord
  has_many :performs, dependent: :destroy
end
