module Coinfund
  class User < ApplicationRecord
    include ActiveModel::SecurePassword
    
    # User has a secure password.
    has_secure_password

    # User's access token is created on User create.
    before_create :renew_access_token

    # Validations for users.

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #NOTE: Need to decide on best regex for our purposes

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, 
                presence: true, 
                uniqueness: { case_sensitive: false }, 
                length: { maximum: 255 }, 
                format: { with: VALID_EMAIL_REGEX }
  
    private
      
      # Set the access token for a user.
      def renew_access_token
        self.access_token = SecureRandom.hex
      end

  end
end