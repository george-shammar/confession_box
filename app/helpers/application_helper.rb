module ApplicationHelper

  def navbar_button_sign_out
    if user_signed_in?
      link_to 'Sign out', destroy_user_session_path, method: :delete,
                                                     class: 'btn btn-light mx-1 btn-sm'
    end
  end

  def navbar_button_log_in
    link_to 'Sign in', new_user_session_path, class: 'btn btn-light mx-1 btn-sm' unless user_signed_in?
  end

  def signed_in_as
    if user_signed_in?
      link_to current_user.username, users_path
    else
      linkt_to 'Guest', new_user_registration_path
    end
  end
end
