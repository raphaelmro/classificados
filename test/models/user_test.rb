require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "name is required" do
    user = User.new(name: nil)

    user.save

    assert user.errors[:name].any?
  end

  test "email is required and in a valid format" do
    user = User.new(email: nil)
    user.save

    assert user.errors[:email].any?

    user = User.new(email: "valid@example.com")
    user.save

    refute user.errors[:email].any?
  end

  test "email is unique" do
    user = User.create(name: 'Dugtrio', email: "contact@pokemon.com", password: "secret", password_confirmation: "secret")
    other_user = User.create(name: 'Diglett', email: "contact@pokemon.com", password: "secret", password_confirmation: "secret")

    assert other_user.errors[:email].any?
  end

end
