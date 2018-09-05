class CharactersController < ApplicationController
  def index
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    # TODO: Move to Character-class
    @character.level = 1
    @character.strength = 1
    @character.agility = 1
    @character.intellect = 1
    @character.cunning = 1
    @character.willpower = 1
    @character.presence = 1

    if @character.save
      redirect_to @character
    else
      render "new"
    end

  end

  def show
  end

  def character_params
    params.require(:character).permit(:klass_id, :level, :name, :race_id, :strength, :agility, :intellect,
      :cunning, :willpower, :presence)
  end
end
