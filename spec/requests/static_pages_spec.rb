require 'spec_helper'

describe "Static pages" do

   #let(:base_title) {"Ruby on Rails Tutorial Sample App" }

=begin
#  describe "GET /static_pages" do   
   describe "Home page" do
#    it "works! (now write some real specs)" do
     it "should have the content 'Sample App'" do
	visit root_path 
	expect(page).to have_content('Sample App')
     end

     #it "should have the title 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
    it "should have the base title" do
       visit root_path
       #expect(page).to have_title("#{base_title} | Home")
   	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
    
    it "should not have a custom page title" do
       visit root_path 
       expect(page).not_to have_title('ddf | Home')
    end
  end
  
=end
  
  subject { page }

  describe "Home page" do
    before { visit root_path }
    
    it { should have_content('Sample App')}
#    it { should have_title("Ruby on Rails Tutorial Sample App")}
    #it { should_not have_title('| Home')}
    it { should have_title(full_title(''))}
  end

  describe "About page" do
=begin
     it "should have the content 'help'" do
 	visit help_path 
	expect(page).to have_content('help')
     end

     it "should have the title 'help'" do
	visit help_path
	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help") 
     end
=end

    before { visit about_path }

    it { should have_content('About')}
    it { should have_title(full_title('About Us'))}
  end

  describe "Help page" do
=begin
     it "should have the content 'About Us'" do
	visit about_path
	expect(page).to have_content('About Us')
     end

     it "should have the title 'About Us'" do
	visit about_path
	expect(page).to have_title("Ruby on Rails Tutorial Sample App | About  Us       ")
     end
=end

    before {visit help_path}
    it { should have_content('Help')}
    it { should have_title(full_title('Help'))}
  end

  describe "Contact pages" do
=begin
    it "should have the content 'Contact'" do
	visit contact_path
	expect(page).to have_content('Contact')
    end


    it "should have the title 'Contact'" do 
	visit contact_path
	expect(page). to have_title("Ruby on Rails Tutorial Sample App | Contact")
     end
=end
  
    before { visit contact_path }
   
    it{ should have_content('Contact') }
    it{ should have_title(full_title('Contact'))}
  end
end
