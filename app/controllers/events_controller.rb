class EventsController < ApplicationController
  def index
    render 'pages/coming_soon' and return unless work_in_progress?
    @events = Event.all
  end

  def show
    render 'pages/coming_soon' and return unless work_in_progress?
    Event.find_by_id(params[:id])
  end
end
