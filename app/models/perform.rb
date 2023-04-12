class Perform < ApplicationRecord
  belongs_to :spectacle
  validates :date, presence: true
end
