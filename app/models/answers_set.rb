class AnswersSet < ActiveRecord::Base
	belongs_to :question

	validates :good_answer, presence: {:message => 'Vous devez entrer une bonne réponse'}
	validates :answer1, presence: {:message => 'Vous devez proposer une première fausse réponse'}
	validates :answer2, presence: {:message => 'Vous devez proposer une deuxième fausse réponse'}
	validates :answer3, presence: {:message => 'Vous devez proposer une troisième fausse réponse'}

	rails_admin do
    configure :question do
      label 'Question of this set: '
    end
  end

end
