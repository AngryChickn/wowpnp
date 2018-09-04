class CharactersController < ApplicationController
  def create
    # Put here race and other params
    @character = Character.find(params[:character_id])
    # put this in a race initializer
    #@comment = @character.skills.create(comment_params)
    redirect_to character_path(@character)
  end

  def index
  end

  private

  #def comment_params
  #  params.require(:comment).permit(:commenter, :body)
  #end
end
