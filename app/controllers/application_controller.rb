class ApplicationController < ActionController::Base
    before_action :fetch_user # this adds the user to every page
  
    private
    def fetch_user
      @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
      session[:user_id] = nil unless @current_user.present?
    end
  
    def check_for_login 
      # call before_action :check_for_login in the controller you want to do it for 
      redirect_to login_path unless @current_user.present?
    end
    
    def check_for_admin
      redirect_to root_path unless @current_user.present? && @current_user.admin? 
    end
  
  end
  