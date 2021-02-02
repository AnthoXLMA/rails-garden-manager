class EventsController < ApplicationController
  def create
    @playground = Playground.find(params[:playground_id])
    @event = Event.new(event_params)
    @event.playground = @playground
    if @event.save
      redirect_to playground_path(@playground)
    else
      render 'playgrounds/show'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @playground = @event.playground
    @event.destroy
    redirect_to playground_path(@playground)
  end

  private

  def event_params
    params.require(:event).permit(:name, :image_url)
  end
end
