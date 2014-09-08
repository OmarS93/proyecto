class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :require_login

  def not_authenticated
  	redirect_to login_url, :alert => "no esta autorizado"
  end

  	rescue_from CanCan::AccessDenied do |exception|
  	   redirect_to root_path, :alert => exception.message 
  end

	private
	def not_authenticated
	      redirect_to login_path, alert: "Porfavor inica sesión primero"
	end
end
