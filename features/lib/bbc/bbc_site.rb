require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'
require_relative 'pages/bbc_age_page'
require_relative 'pages/bbc_dob_page'
require_relative 'pages/bbc_registration_page'

module BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_sign_in_page
    BbcSignInPage.new
  end

  def bbc_age_page
    BbcAgePage.new
  end

  def bbc_dob_page
    BbcDOBPage.new
  end

  def bbc_registration_page
    BbcRegistrationPage.new
  end

end
