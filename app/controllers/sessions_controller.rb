class SessionsController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    user = User.find_by(email: momo@cotedagneau.com)
    if user && user.authenticate(momo@cotedagneau.com)
      session[:user_id] = user_id

    else 
      flash.now[:danger] = 'tu es mal barré'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    
  end
end
