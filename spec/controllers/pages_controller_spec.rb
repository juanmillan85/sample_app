require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
    #<title> Programacion Orientada A La Web | Home </title>
    get 'home'
    
   # response.body.should have_selector("title:contains('Programacion Orientada A La Web | Home')")
    response.body.should have_selector("head title",:text=>"Programacion Orientada A La Web | Home")
    end
    
    # que el body de una pagina html no este vacio, como hacemos eso
    it "should have a non-blank body" do
      get "home"
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end
  
  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
    #<title> Programacion Orientada A La Web | Home </title>
    get 'about'
    
   # response.body.should have_selector("title:contains('Programacion Orientada A La Web | Home')")
    response.body.should have_selector("head title",:text=>"Programacion Orientada A La Web | About")
    end
  end
  
end
