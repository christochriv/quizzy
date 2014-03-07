class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :challenges, foreign_key: :champion_id
  has_many :challenge_steps, foreign_key: :answerer

  validates :email, presence: {:message => 'Vous devez entrer un email'}
  validates :first_name, presence: {:message => 'Vous devez entrer un prénom'}
  

  def self.find_for_facebook_oauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.first_name = auth.extra.raw_info.first_name   # assuming the user model has a name
        user.last_name = auth.extra.raw_info.last_name
        user.token = auth.credentials.token
        user.image = auth.info.image # assuming the user model has an image
        user.city = auth.location.name if auth.location
        user.gender = auth.extra.raw_info.gender
    end
  end

  def self.new_with_session(params, session)
      super.tap do |user|
        if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
          user.email = data["email"] if user.email.blank?
        end
      end
    end

  def self.nb_of_answered_questions(user)
    q = ChallengeStep.where(answerer: user).collect {|p| p.question }
    @nb_of_questions = q.length 
    return @nb_of_questions
  end

  def self.nb_of_good_answers(user)
    score_table = Challenge.where(champion: user).collect {|p| p.score }
    @nb_of_good_aswers = score_table.inject{ |sum, el| sum + el }.to_f.round
    return @nb_of_good_aswers
  end

  def self.average_score(user)
      if @nb_of_questions == nil
        return "0"
      else
        @average_score = (@nb_of_good_aswers.to_f / @nb_of_questions * 100).round(2)
        return @average_score
      end
  end

end