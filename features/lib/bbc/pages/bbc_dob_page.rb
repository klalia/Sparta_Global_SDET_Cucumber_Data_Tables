require 'capybara/dsl'

class BbcDOBPage

  include Capybara::DSL

  DAY = 'day-input'
  MONTH = 'month-input'
  YEAR = 'year-input'

  def input_day
    fill_in(DAY, :with => 21)
  end

  def input_month
    fill_in(MONTH, :with => "Jan")
  end

  def input_year
    fill_in(YEAR, :with => 2000)
  end

  def click_continue_button
    find("button[type='submit']").click
  end

end
