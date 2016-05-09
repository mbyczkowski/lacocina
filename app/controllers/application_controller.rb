class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :work_in_progress?

  def work_in_progress?
    !Rails.env.production?
  end
end
