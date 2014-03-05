class Challenge < ActiveRecord::Base
  belongs_to :champion, class_name: "User"
  has_many :challenge_steps
  has_many :questions

  QUESTIONS_PER_CHALLENGE = 3

  def add_points(current_challenge)
 		current_challenge.challenge_steps.each do |c|
	  	c.chosen_answer == c.question.answers_set.good_answer ? current_challenge.score += 1 : nil
	  end
	  current_challenge.save
	end

	# def available_questions(current_user)
	# 	answered_question_ids = ChallengeStep.where(answerer: current_user).collect {|p| [ p.question_id ] }.flatten.uniq
	# 	available_questions = Question.all.where.not(id: answered_question_ids)
	# end

end
