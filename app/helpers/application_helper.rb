module ApplicationHelper

  def navbar_button_sign_out
    if user_signed_in?
      link_to 'Sign out', destroy_user_session_path, method: :delete,
                                                     class: 'btn btn-light mx-1 btn-sm'
    end
  end
end
