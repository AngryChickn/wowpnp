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
    else
      render "new"
    end

    def show
    end
  end

  def character_params
    params.require(:character).permit(:name, :race_id)
  end
end
