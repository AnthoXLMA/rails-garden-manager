class PlaygroundsController < ApplicationController
  def index
    @playgrounds = Playground.all
  end

  def show
    @playground = Playground.find(params[:id])
    @event = event.new
    @events = @playground.events
  end

  def new
    @playground = Playground.new
  end

  def create
    @playground = Playground.new(playground_params)
    if @playground.save
      redirect_to playground_path(@playground)
    else
      render :new
    end
  end

  private

  def playground_params
    params.require(:playground).permit(:name, :banner_url)
  end
end
