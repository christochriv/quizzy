class Question < ActiveRecord::Base
  has_many :challenge_steps
  has_one :answers_set
  accepts_nested_attributes_for :answers_set, allow_destroy: true

  validates :query, presence: {:message => 'Vous devez entrer une question'}
  validates :explication, presence: {:message => 'Vous devez entrer une explication pour recontextualiser la question'}
  validates :source_url, presence: {:message => 'Vous devez donner la source de votre information'}
  validates :difficulty, presence: {:message => 'Vous devez définir un niveau de difficulté'}

  def self.available_questions(user)
  	answered_question_ids = ChallengeStep.where(answerer: user).collect {|p| [ p.question_id ] }.flatten.uniq
    Question.all.where.not(id: answered_question_ids)
  end
end


