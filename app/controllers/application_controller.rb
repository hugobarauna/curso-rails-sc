class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_company
    if current_company
      @current_company
    else
      redirect_to login_path, :alert => "Please login!"
    end
  end

  def current_company
    @current_company = Company.find_by_id(session[:company_id])
  end
  helper_method :current_company
end
