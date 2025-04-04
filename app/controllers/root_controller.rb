class RootController < ApplicationController
def about
    render "about"
end

def api
@response = {
    status: 200, data: "not available because it is dummy"
}
render json: @response
end

def home
    @posts = Post.all
end

def add
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    @response = {
        status: 200, data: "saved successfully"
    }
    if @post.save
      redirect_to root_path, notice: "Post was successfully created."
    end
end

def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path, notice: "Post was successfully deleted."
end
end
