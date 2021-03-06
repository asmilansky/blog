class PostsController < ApplicationController

	def show
    @post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
	end

	def create
		@story = Story.find(params[:story_id])
  	@post = @story.posts.create(post_params)
  	redirect_to story_path(@story)
	end

	def destroy
  @post = Post.find(params[:id])
  @post.destroy
 
  redirect_to posts_path
end

private
  def post_params
    params.require(:post).permit(:name, :sentence)
  end

end
