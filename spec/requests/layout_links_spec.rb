require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
    visit root_path
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    visit contact_path
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    visit about_path
    response.should have_selector('title', :content => "About")
  end

  it "should have a Help page at '/help'" do
    visit help_path
    response.should have_selector('title', :content => "Help")
  end

  it "should have a SignUp page at '/signup'" do
    visit signup_path
    response.should have_selector('title', :content => "Sign Up")
  end

  it "should have the right links on the layout" do
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Sign up now!"
    response.should have_selector('title', :content => "Sign Up")
    response.should have_selector('a[href="/"]>img')
  end
end
