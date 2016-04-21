module Coinfund
  class User < ApplicationRecord
    include ActiveModel::SecurePassword
    
    # User has a secure password.
    has_secure_password

    # User's access token is created on User create.
    before_create :renew_access_token
  
    private
      
      # Set the access token for a user.
      def renew_access_token
        self.access_token = SecureRandom.hex
      end
      
  end
end