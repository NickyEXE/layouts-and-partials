class TeamsController < ApplicationController
  before_action :set_team, only: [:show]

  def index
    @teams = Team.all
  end

  def show

  end

  def new
    @team = Team.new
    3.times do
      @team.superheros.build
    end
  end

  def create
    @team = Team.create(team_params)
    if @team.valid?
      redirect_to @team
    else
      render :new
    end
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :locality, :established, superheros_attributes: [:name, :alias, :power, :power_level])
  end

end
