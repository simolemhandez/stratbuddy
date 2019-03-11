class Attempt < ApplicationRecord
  belongs_to :user
  belongs_to :case
  has_many :answers
end
