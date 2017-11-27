require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html, :js, :json

  layout :set_layout
  before_action :load_color
  protect_from_forgery with: :exception

  # optional just for fun
  helper_method :current_hit

  def current_hit
    hit = cookies['hit'].to_i
    hit += 1
    cookies['hit'] = hit
    hit
  end

  def load_color
    @color = %w(pink red purple deep-purple indigo blue light-blue cyan teal green light-green lime yellow amber orange deep-orange brown grey).sample
  end

  protected


  def set_layout
    if user_signed_in?
      "application"
    else
      devise_controller? ? "login" : "application"
    end
  end

end
