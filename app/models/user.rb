class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: %i[facebook]
         
	has_many :chores
	has_many :tasks, through: :chores
  accepts_nested_attributes_for :tasks

	validates :username, presence: true 
	#validates :email, uniqueness: true  


def self.new_with_session(params, session)
super.tap do |user|

    if data = session['devise.facebook_data'] && session['devise.facebook_data']['extra']['raw_info']
      user.email = data['email'] if user.email.blank?
    end
  end
end

def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0, 20]
    user.username = auth.info.name   # assuming the user model has a name
    #user.image = auth.info.image # assuming the user model has an image
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation!
  end
end

#def self.persisted_as_facebook_user?(auth)
  #this method returns true or false if the the user is persisted in the database with  



end
 