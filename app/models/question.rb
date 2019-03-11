class Question < ApplicationRecord
  belongs_to :case
  has_many :answers
end
