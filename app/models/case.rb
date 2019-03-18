class Case < ApplicationRecord
  has_many :questions
  has_many :attempts
  validates :industry, inclusion: { in: ["Consumer goods", "Oil & gas", "Manufacturing", "Financial services", "Private Equity", "Pharmaceuticals", "Airline", "Technology, Media & Telecommunication", "Non-profit"]}
end
