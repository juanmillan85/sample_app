module ApplicationHelper
  def title
    base_title="Programacion Orientada A La Web"
    if @title.nil?
      base_title
    else
    "#{base_title} | #{@title}"
    end
  end

end
