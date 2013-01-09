require 'spec_helper'

describe "StaticPages" do
 
  describe "Home pages" do
    it "should have the h1 'Sample Twitter'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample Twitter')
    end
    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => "Ruby on Rails Tutorials Sample Twitter | Home")
    end
  end

  describe "Help pages" do
  	it "should have the h1 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end
  	it "should have title 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorials Sample Twitter | Help")
  	end
  end

  describe "About Page" do
  	it "should have the h1 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About Us')
  	end
  	it "should have title 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorials Sample Twitter | About Us" )
  	end

  end
end