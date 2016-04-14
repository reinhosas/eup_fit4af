class SessionsController < ApplicationController
	def new

	end

	def create
		if user = User.authenticate(params[:email], params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Moin Digga"
			redirect_to session[:intended_url] || root_url
			session[:intended_url] = nil
		else
			flash.now[alert] = "email nicht gefunden oder falsches Password"
			render :new
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "Und tschüß"
	end
end
