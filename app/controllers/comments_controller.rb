class CommentsController < ApplicationController
    def index
        @comments = Comment.all
      end
    
      def show
        @comment = Comment.find(params[:id])
      end
    
      def new
        @comment = Comment.new
      end
    
      def edit
        @comment = Comment.find(params[:id])
      end
    
      def create
          
          puts "$" * 60
        puts "ceci est le contenu de params :"
        puts params
        puts "$" * 60
        
        @comment = Comment.new(title: params[:title], content: params[:content], user_id: params[:user_id])
        
    
        puts "$" * 60
        puts "ceci est mon objet Gossip :"
        puts @comment.title
        puts @comment.content
        puts "$" * 60
    
    
        if @comment.save
          redirect_to @gossip
        else
          render :new
        end
      end
    
      def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to gossips_path
      end
end
