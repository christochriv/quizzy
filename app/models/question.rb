class Question < ActiveRecord::Base
  has_many :challenge_steps
  has_one :answers_set
  accepts_nested_attributes_for :answers_set, allow_destroy: true

  def self.available_questions(user)
  	answered_question_ids = ChallengeStep.where(answerer: user).collect {|p| [ p.question_id ] }.flatten.uniq
    Question.all.where.not(id: answered_question_ids)
  end
end
