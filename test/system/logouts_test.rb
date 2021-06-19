require "application_system_test_case"

# class LogoutsTest
class LogoutsTest < ApplicationSystemTestCase
  def setup
    @user = FactoryBot.create(:user, password: 'password', password_confirmation: 'password')
  end

  test 'conseguir fazer logout do user' do
    login_as(@user)

    click_on 'Sair'

    assert_equal new_session_path, current_path
    assert_text 'Sessão finalizada'
  end
end
