class CharactersController < ApplicationController
  def index
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    # TODO: Move to Character-class
    klass_mod = @character.getInitKlassMod     
    @character.level = 1

    @character.hitpoints = 10 + (klass_mod[:hitpoints] || 0)
    @character.stamina = 10 + (klass_mod[:stamina] || 0)
    @character.mana = 10 + (klass_mod[:mana] || 0)
    @character.armor = 0
    @character.resistence = 0

    @character.strength = 1 + (klass_mod[:strength] || 0)
    @character.agility = 1 + (klass_mod[:agility] || 0)
    @character.intellect = 1 + (klass_mod[:intellect] || 0)
    @character.cunning = 1 + (klass_mod[:cunning] || 0)
    @character.willpower = 1 + (klass_mod[:willpower] || 0)
    @character.presence = 1 + (klass_mod[:presence] || 0)

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
