class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :auth_user

  private
  def auth_user
    
    unless user_signed_in?
      authenticate_user!
    end
    
  end

  private 
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end
