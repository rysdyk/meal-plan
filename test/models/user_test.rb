require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should save a valid user" do
    user = users(:one)
    assert user.save, "User should have saved"
  end
  
  test "does not save user with mis-matched passwords" do
    user = User.new(name: "sam", email: "sam@email.com", password: "test", password_confirmation: "forecho")
    assert_not user.save, "user should not have saved with mis-matched passwords"
  end
end
