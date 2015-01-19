class SavingThrowsController < ApplicationController
  before_action :set_saving_throw, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @saving_throws = SavingThrow.all
    respond_with(@saving_throws)
  end

  def show
    respond_with(@saving_throw)
  end

  def new
    @saving_throw = SavingThrow.new
    respond_with(@saving_throw)
  end

  def edit
  end

  def create
    @saving_throw = SavingThrow.new(saving_throw_params)
    @saving_throw.save
    respond_with(@saving_throw)
  end

  def update
    @saving_throw.update(saving_throw_params)
    respond_with(@saving_throw)
  end

  def destroy
    @saving_throw.destroy
    respond_with(@saving_throw)
  end

  private
    def set_saving_throw
      @saving_throw = SavingThrow.find(params[:id])
    end

    def saving_throw_params
      params.require(:saving_throw).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :ability_id)
    end
end
