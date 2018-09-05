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

  end
  
  def show
  end

  def character_params
    params.require(:character).permit(:name, :klass_id, :race_id)
  end
end
