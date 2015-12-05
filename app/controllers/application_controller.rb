class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end

  def get_pins input
    @pins = Pin.all.order("created_at DESC")
    return @pins[-input] 
  end

  

  def is_admin?
    if current_user.admin?
      true
    else
    end
  end

  def is_admin!
    if (current_user.nil?)
      redirect_to new_user_session_path
    elsif (!current_user.admin?)
      redirect_to root_path
    else
    end
  end
  helper_method :get_pins
  helper_method :is_admin!
  helper_method :is_admin?
end
