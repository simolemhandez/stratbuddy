class Question < ApplicationRecord
  belongs_to :case
  has_many :answers
  validates :skills, inclusion: { in: ["Logic and rigorous thinking", "Business sense & culture", "Mathematics skills"]}
end
