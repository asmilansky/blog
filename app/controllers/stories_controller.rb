class StoriesController < ApplicationController
  
  def index
  	@stories = Story.all
  end

  def new
  	@story = Story.new
	end

	def create
		@story = Story.create(story_params)
  	redirect_to story_path(@story)
	end

   def show
     @story = Story.find(params[:id])
   end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
   
    redirect_to stories_path
  end
private
  def story_params
    params.require(:story).permit(:title, :author)
  end

end
