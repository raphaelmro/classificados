require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase

  def setup
    @user = FactoryBot.create(:user, password: "password", password_confirmation: "password")

  end

  test "login with valid credentials" do
    login_as(@user)

    assert_text "Bem vindo, Chansey!"
  end

  test "trying to login with invalid credentials" do
    login_as(@user, "invalidpassword")

    assert_equal new_session_path, current_path

    assert_text "E-mail ou senha inválidos!"
  end

end
