class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :challenges, foreign_key: :champion_id
  has_many :challenge_steps, foreign_key: :answerer

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
        user.city = auth.location.name
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



end
