class Question < ActiveRecord::Base
  has_many :challenge_steps
  has_one :answers_set
  accepts_nested_attributes_for :answers_set, allow_destroy: true
end
