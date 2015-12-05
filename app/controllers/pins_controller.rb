class PinsController < ApplicationController
	before_action :find_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :is_admin!, except: [:index, :show]
  def index
  	@pins = Pin.all.order("created_at DESC")
  end

  def new
    @pin = current_user.pins.build
  end

  def create
    @pin = current_user.pins.build(pin_params)
    if @pin.save
      redirect_to @pin, notice: "Successfully created new Pin."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: "Pin was successfully updated!"
    else
      render 'edit'
    end
  end


  def destroy
    @pin.destroy
    redirect_to photos_path
  end

  def show
  end

  private
  def find_pin
  	@pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end
end
