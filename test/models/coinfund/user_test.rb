require 'test_helper'

module Coinfund
  class UserTest < ActiveSupport::TestCase
    
    setup :setup_user

    test "user is valid" do
      assert @user.valid?, @user.errors.full_messages
    end

    test "user must have a first_name" do
      @user.first_name = nil
      assert_not @user.valid?
    end

    test "user must have a last_name" do
      @user.last_name = nil
      assert_not @user.valid?
    end

    test "user must have an email" do
      @user.email = nil
      assert_not @user.valid?
    end

    test "user must have a unique email" do
      clone = coinfund_users(:jake_clone)
      clone.email = 'jake@coinfund.io'
      assert_not clone.valid?
    end


    private

      def setup_user
        @user = coinfund_users(:jake_clone)
      end
  end
end
