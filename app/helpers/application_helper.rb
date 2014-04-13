module ApplicationHelper
  
  # Returns the full title on a per-page bases.
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    
    # If the page title doesn't exist, return only the base title without the |
    # If both exist, echo the base title and the page title
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
