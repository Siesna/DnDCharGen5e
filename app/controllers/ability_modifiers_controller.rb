class AbilityModifiersController < ApplicationController
  before_action :set_ability_modifier, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ability_modifiers = AbilityModifier.all
    respond_with(@ability_modifiers)
  end

  def show
    respond_with(@ability_modifier)
  end

  def new
    @ability_modifier = AbilityModifier.new
    respond_with(@ability_modifier)
  end

  def edit
  end

  def create
    @ability_modifier = AbilityModifier.new(ability_modifier_params)
    @ability_modifier.save
    respond_with(@ability_modifier)
  end

  def update
    @ability_modifier.update(ability_modifier_params)
    respond_with(@ability_modifier)
  end

  def destroy
    @ability_modifier.destroy
    respond_with(@ability_modifier)
  end

  private
    def set_ability_modifier
      @ability_modifier = AbilityModifier.find(params[:id])
    end

    def ability_modifier_params
      params.require(:ability_modifier).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :ability_id)
    end
end
