class Question < ActiveRecord::Base
  has_many :challenge_steps
  has_one :answers_set
end
