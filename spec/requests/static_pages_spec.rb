require 'spec_helper'

describe "Static pages" do
#  describe "GET /static_pages" do
   describe "Home page" do
#    it "works! (now write some real specs)" do
     it "should have the content 'Sample App'" do
	visit '/static_pages/home'
	expect(page).to have_content('Sample App')
     end

     it "should have the title 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
       visit '/static_pages/home'
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
  
  describe "Help page" do
     it "should have the content 'help'" do
 	visit '/static_pages/help'
	expect(page).to have_content('help')
     end

     it "should have the title 'help'" do
	visit '/static_pages/help'
	expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help') 
     end
  end

  describe "About page" do
     it "should have the content 'About Us'" do
	visit '/static_pages/about'
	expect(page).to have_content('About Us')
     end

     it "should have the title 'About Us'" do
	visit '/static_pages/about'
	expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us                                  ')
     end
  end
end
