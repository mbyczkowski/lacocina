class PagesController < ApplicationController

    def show
      if work_in_progress?
        render page
      else
        if finished_pages.include?(page)
          render page
        else
          render 'coming_soon'
        end
      end
    end

    private

    def finished_pages
      %w(mission catering volunteer donate people events)
    end

    def page
      params[:page]
    end
end
