class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    redirect_to events_path
  end
end
