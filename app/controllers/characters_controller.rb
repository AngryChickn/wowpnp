class CharactersController < ApplicationController
  def index
  end

  def new
  	@character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to @character
    #else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
     # render "new"
    end
  end

  def character_params
    params.require(:character).permit(:name)
  end
end
