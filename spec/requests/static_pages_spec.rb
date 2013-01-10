require 'spec_helper'

describe "StaticPages" do


  describe "Home page" do

    it "should have the h1 'Sample Twitter'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample Twitter')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample Twitter")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => "Ruby on Rails Tutorial Sample Twitter | Home")
    end
  end

  describe "Help pages" do
  	it "should have the h1 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end
  	it "should have title 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample Twitter | Help")
  	end
  end

  describe "About Page" do
  	it "should have the h1 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About Us')
  	end
  	it "should have title 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample Twitter | About Us" )
  	end

  end

  describe "Contact Page" do
  	it "should have the h1 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_selector('h1', :text => 'Contact')
  	end
  	it "should have title 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample Twitter | Contact")
  	end
  end
end