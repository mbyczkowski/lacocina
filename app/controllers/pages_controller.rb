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
    rescue ActionView::MissingTemplate
      respond_to do |format|
        format.html { render 'not_found', status: :not_found }
        format.any { render status: :not_found, nothing: true }
      end
    end

    private

    def finished_pages
      %w(mission catering volunteer donate donate_monthly people events incubator)
    end

    def page
      params[:page]
    end
end
