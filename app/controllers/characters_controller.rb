class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_create_params.merge({ level: 1 }))
    @character.init
    if @character.save
      redirect_to @character
    else
      render "new"
    end
  end

  def edit
  end

  # PATCH/PUT /npcs/1
  # PATCH/PUT /npcs/1.json
  def update
    respond_to do |format|
      if @character.update(character_update_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  private
    def set_character
      @character = Character.find(params[:id])
    end

    def character_create_params
      params.require(:character).permit(:klass_id, :name, :race_id)
    end

    def character_update_params
      params.require(:character).permit()
    end
end
