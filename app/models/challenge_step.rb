class ChallengeStep < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :question
  belongs_to :answerer, class_name: "User"

  rails_admin do
    configure :challenge do
      label 'Challenge of this challenge_step: '
    end
  end

  rails_admin do
    configure :question do
      label 'Question of this challenge_step: '
    end
  end

  rails_admin do
    configure :answerer do
      label 'Answerer of this challenge_step: '
    end
  end

end