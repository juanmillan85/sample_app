require 'spec_helper'

describe "Web Site Integration" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Welcome to The Start UP') }
    it { should have_selector("head title", text: title('')) }
    it { should_not have_selector 'title', text: '| Home' }
    it { body.should_not =~ /<body>\s*<\/body>/}
    
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: title('Contact')) }
  end
end