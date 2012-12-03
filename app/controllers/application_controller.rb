class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?
  contenteditable_filter "user_signed_in?"

  def admin?
    user_signed_in? && current_user.admin
  end

  def admin_only
    redirect_to root_path unless current_user.admin == true
  end
end
