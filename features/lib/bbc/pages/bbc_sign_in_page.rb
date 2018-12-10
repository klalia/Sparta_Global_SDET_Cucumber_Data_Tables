require 'capybara/dsl'

class BbcSignInPage

  include Capybara::DSL

  def register_link
    find("a[class='link link--primary']")
  end

  def click_register_link
    find("a[class='link link--primary']").click
  end

end
