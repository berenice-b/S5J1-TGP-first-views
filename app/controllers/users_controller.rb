class UsersController < ApplicationController
    def index
        @users = User.all
      end
    
      def show
        @user = User.find(params[:id])
      end
    
      def new
        @user = User.new
      end
    
      def edit
        @user = User.find(params[:id])
      end
    
      def create
      puts "$"*80
      
      @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
      @user.city_id = City.all.sample.id
      if @user.save
      redirect_to gossips_path
      else 
      puts "*"*100
      puts  @user.errors.messages 
      puts "*"*100 
      render :new
      end
    end
      
    
end
