module ApplicationHelper

  def navbar_button_sign_out
    if user_signed_in?
      link_to 'Sign out', destroy_user_session_path, method: :delete
    end
  end

  def navbar_button_log_in
    link_to 'Sign in', new_user_session_path, unless user_signed_in?
  end
  end

  def signed_in_as
    if user_signed_in?
      link_to current_user.username, user_path(current_user)
    else
      link_to 'Guest', new_user_registration_path
    end
  end

  def home
    link_to "Home", root_path
  end

  def new_post_button
    if user_signed_in?
      link_to 'New Confession', new_post_path
    else
      link_to 'New Confession', new_user_session_path
    end
  end

end
