class PagesController < ApplicationController
  def home
    @title="Programacion Orientada A La Web | Home"
  end

  def contact
     @title="Programacion Orientada A La Web | Contact"
  end

  def about
     @title="Programacion Orientada A La Web | About"
  end

end
