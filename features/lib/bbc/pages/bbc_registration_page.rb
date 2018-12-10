require 'capybara/dsl'

class BbcRegistrationPage

  include Capybara::DSL

  PASSWORD = 'password-input'
  ERROR = '#form-message-password'

  def input_password(password)
    fill_in(PASSWORD, :with => "#{password}")
  end

  def click_register_button
    find("button[id='submit-button']").click
  end

  def get_error_message(error)
    find(ERROR).text
  end

end
