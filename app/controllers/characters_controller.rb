class CharactersController < ApplicationController
  def index
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params.merge({level: 1}))
    @character.init

    if @character.save
      redirect_to @character
    else
      render "new"
    end
  end

  def show
  end

  def character_params
    params.require(:character).permit(:klass_id, :name, :race_id)
  end
end
