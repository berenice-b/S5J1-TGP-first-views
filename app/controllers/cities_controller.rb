class CitiesController < ApplicationController
    def index
        @cities = City.all
      end
    
      def show
        @city = City.find(params[:id])
        @users = User.where("city_id = ?", params[:id])
        @gossips = Gossip.all
      end
    
      def new
        @city = City.new
      end
    
      def edit
        @city = City.find(params[:id])
      end
    
      def create
          
          puts "$" * 60
        puts "ceci est le contenu de params :"
        puts params
        puts "$" * 60
        
        @cities = City.new(name: params[:name], zip_code: params[:zip_code])
        
    
        puts "$" * 60
        puts "ceci est mon objet City :"
        puts @city.name
        puts @city.zip_code
        puts "$" * 60
    
    
        if @city.save
          redirect_to @city
        else
          render :new
        end
      end
    
      def update
        @city = City.find(params[:id])
        if @city.update(name: params[:name],zip_code: params[:zip_code])
          redirect_to @city
        else
          render :edit
        end
      end
    
      def destroy
        @city = City.find(params[:id])
        if @city.destroy
          redirect_to gossips_path
        end
    end
end
