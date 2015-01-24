class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.where(:user => current_user)
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
    @character.build_ability
    @character.ability.build_saving_throw
    @character.ability.build_ability_modifier
  end

  # GET /characters/1/edit
  def edit
    @character = Character.find(params[:id])
    @character.build_ability if @character.ability.nil?
    @character.ability.build_saving_throw if @character.ability.saving_throw.nil?
    @character.ability.build_ability_modifier if @character.ability.ability_modifier.nil?
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)
    @character.user = current_user
    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :race, :character_class, :background, :alignment, 
                    :experience, :level, :speed, :proficiency_bonus, :max_hp, :max_hp, :armor_class, 
                    :hit_die, :total_hit_die, :languages, ability_attributes: [:id, :strength, :dexterity, 
                    :constitution, :intelligence, :wisdom, :charisma, saving_throw_attributes: [:id, 
                    :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma], 
                    ability_modifier_attributes: [:id, :strength, :dexterity, :constitution, 
                    :intelligence, :wisdom, :charisma]])
    end
end
