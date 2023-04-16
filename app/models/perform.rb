class Perform < ApplicationRecord
  belongs_to :spectacle
  belongs_to :location
  validates :date, presence: true
end
