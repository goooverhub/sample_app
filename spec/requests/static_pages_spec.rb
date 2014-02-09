require 'spec_helper'

describe "StaticPages" do
  describe "Home Pages" do
    it "should have the content 'Sample App" do
      visit root_path
      expect(page).to have_content('Sample App')
    end
    it "should have the right title" do
      visit root_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end
  
  describe "Help Pages" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
      
  describe "About Us"  do
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  
  describe "Contact" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content("Contact")
    end
    it "should have the right title" do
      visit contact_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
    end
  end
    

    
end
