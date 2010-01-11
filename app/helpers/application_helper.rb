# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title
    base_title = "hints of grape"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
    
  def logo
    logo = image_tag("logo1.png", :alt => "logo", :class => "round")
  end
end
