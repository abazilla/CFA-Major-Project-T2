class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Pundit

  def after_sign_in_path_for(resource)

    if current_user.sign_in_count > 1
      profiles_path
    else
      edit_profile_path(current_user.profile.id)
    end
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path || root_path)
  end

end
