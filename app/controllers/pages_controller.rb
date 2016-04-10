class PagesController < ApplicationController
  def show
    puts params
    render params[:page]
  end
end
