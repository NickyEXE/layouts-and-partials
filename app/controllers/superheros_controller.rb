class SuperherosController < ApplicationController
  before_action :set_superhero, only: [:edit, :update, :show, :destroy]

  def show
  end

  def index
    @superheros = Superhero.all
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      redirect_to @superhero
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @superhero.update(superhero_params)
      redirect_to @superhero
    else
      render :edit
    end
  end

  def destroy
    @superhero.destroy
    redirect_to :superheros_path
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :alias, :power, :power_level)
  end

  def set_superhero
    @superhero = Superhero.find(params[:id])
  end


end
