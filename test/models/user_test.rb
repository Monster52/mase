require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "should save user with proper email" do
    @user = User.new(email: "test@test.com", password: "password")
    
    assert true, @user.valid?
  end

  test "should not save a user without an email" do
    @user = User.new(email: "", password: "password")
    
    assert_not @user.valid?
  end
  
  test "should not save a user with unvalidated email" do
    @user = User.new(email: "test.com", password: "password")
    
    assert_not @user.valid?
  end
  
end
