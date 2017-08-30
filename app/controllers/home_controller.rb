class HomeController < ApplicationController
    def index
    end
    
    def create
        saved_info = Post.new
        saved_info.title = params[:title]
        saved_info.content = params[:content]
        saved_info.pic = params[:picture]
        saved_info.save
           
        redirect_to '/home/read' 
    end
    
    def read
        @info = Post.all
    end
    
    def update
        @updated_info = Post.find(params[:update_id])
    end
    
    def delete
        deleted_post = Post.find(params[:delete_id])
        deleted_post.destroy
        
        redirect_to :back
    end
    
    def edit
        edited_info = Post.find(params[:edit_id])
        edited_info.title=params[:title]
        edited_info.content=params[:content]
        edited_info.pic=params[:picture]
        edited_info.save
        
        redirect_to '/home/read'
    end
end
