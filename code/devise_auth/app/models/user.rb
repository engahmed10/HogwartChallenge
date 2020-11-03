class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         # <---- LESSON ---->
         # Step Fourteen:
         # Add omniauthable and pass in which ever providers you are using here.
         :omniauthable, omniauth_providers:[:facebook, :github, :google_oauth2]
 


         def self.from_omniauth(access_token)
          data = access_token.info
          user = User.where(email: data['email']).first
      
          # Users are created if they don't exist
          unless user
            user = User.new(username: data['name'],
                            email: data['email'],
                            password: Devise.friendly_token[0, 20])
            user.skip_confirmation! # Add this line to skip confirmation
            user.save
          end
          user
        end
    


end