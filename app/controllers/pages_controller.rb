class PagesController < ApplicationController
  def home
  
  end

  def contact
     @title="Contact"
  end

  def help
  	@title="Help"
  end

  
def about
     @title="About Us"
  end
end
