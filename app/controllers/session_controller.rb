class SessionController < ApplicationController
  skip_before_action :authorize # , only: [ :new ]
  
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to session[:return]
    else
      redirect_to login_url, alert: 'Invalid user or password'
    end    
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end
end
