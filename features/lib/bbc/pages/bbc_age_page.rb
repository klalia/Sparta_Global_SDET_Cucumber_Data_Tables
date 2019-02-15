require 'capybara/dsl'

class BbcAgePage

  include Capybara::DSL

  def over_13_link
    find("a[aria-label='13 or over']")
  end

  def click_over_13_link
    find("a[aria-label='13 or over']").click
  end

end
