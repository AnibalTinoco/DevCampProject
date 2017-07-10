module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete  
    else
      (link_to "Sign Up", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    end
  end
  
  def sample_helper
    content_tag(:div, "My content", class: "my-class")
  end
  
  def source_helper(layout_name)
    if session[:source]
    content_tag(:p,"Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout")
    end
  end
  def copyright_generator
    AniTino::Renderer.copyright 'Anibal Tinoco', 'All rights reserved'
  end
end
