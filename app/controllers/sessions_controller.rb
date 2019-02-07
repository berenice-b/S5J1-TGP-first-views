class SessionsController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      #session[:user_id] = user_id
      redirect_to root_path

    else 
      puts 'tu es mal barré'
      render 'new'
      
    end
  end

  def destroy
    session.delete(:user_id)
    
  end
end
