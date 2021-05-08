module ApplicationHelper

  def navbar_button_sign_out
    if user_signed_in?
      link_to 'Sign out', destroy_user_session_path, method: :delete, class:'color-blue'
    end
  end

  def navbar_button_log_in
    if !user_signed_in?
      link_to 'Sign in', new_user_session_path, class:'color-blue'
    end
  end

  def signed_in_as
    if user_signed_in?
      link_to current_user.username, user_path(current_user), class:'color-blue'
    else
      link_to 'Guest', new_user_registration_path, class:'color-blue'
    end
  end

  def home
    link_to "Home", root_path, class:'color-blue'
  end

  def navbar_button_edit(user)
    link_to 'Edit profile', edit_user_registration_path, class:'color-blue' if user_signed_in?
  end

  def new_post_button
    if user_signed_in?
      link_to 'New Confession', new_post_path, class:'color-blue'
    else
      link_to 'New Confession', new_user_session_path, class:'color-blue'
    end
  end


end
