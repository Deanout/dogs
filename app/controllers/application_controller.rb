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

    def get_status input
      @litter = input
    if @litter.status == 0
      return "Sales Status: Available!"
    elsif @litter.status == 1
      return "Sales Status: Pending Offers!"
    else
      return "Sales Status: Sold!"
    end
  end

  def get_newest_pin input
    @pins = Pin.all.order(:id).reverse_order.offset(input - 1).first
    return @pins
  end

  def pins_exist?
    if Pin.first != nil
      return true
    else
      return false
    end
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
  helper_method :pins_exist?
  helper_method :get_status
  helper_method :get_newest_pin
  helper_method :is_admin!
  helper_method :is_admin?
end
