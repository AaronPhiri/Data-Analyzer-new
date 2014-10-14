class SessionsController < ApplicationController
	
  def new
  end

	def login
		user = User.find_by(name: params[:name])
		if user and user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to admin_url and return
		else
     	flash[:alert] = "Invalid user/password combination."
			redirect_to login_url
		end
	end
	
  def create
  end

  def destroy
		session[:user_id] = nil
		flash[:alert]= "Logged out"
		redirect_to login_url 
  end
end
