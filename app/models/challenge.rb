class Challenge < ActiveRecord::Base
  belongs_to :champion, class_name: "User"
  has_many :challenge_steps
  has_many :questions

  QUESTIONS_PER_CHALLENGE = 2

  rails_admin do
    configure :champion do
      label 'Champion of this challenge: '
    end
  end

  def add_points(current_challenge)
 		if current_challenge.score == 0
      current_challenge.challenge_steps.each do |c|
  	  	c.chosen_answer == c.question.answers_set.good_answer ? current_challenge.score += 1 : nil
  	  end
  	  current_challenge.save
    else
    end
	end

end
