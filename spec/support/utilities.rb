def title(page_title)
  base_title = "Programacion Orientada A La Web"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end