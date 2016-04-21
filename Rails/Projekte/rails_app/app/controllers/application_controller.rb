class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	
	before_action :set_sidebar_events

	def current_user
		@current_user = User.find(session[:user_id]) if session[:user_id]
	end

	helper_method :current_user

	def require_signin
		unless current_user
			session[:intended_url] = request.url
			redirect_to new_session_url, alert: "Erst einloggen bitte!"
		end
	end

	def require_admin
		unless current_user_admin?
			redirect_to new_session_url, alert: "Bitte als Admin anmelden!"
		end
	end

	def current_user_admin?
		current_user && current_user.admin?
	end
	helper_method :current_user_admin?

	private
		def set_sidebar_events
			@sidebar_events = Event.upcoming
		end

end
