require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  layout :set_layout

  protect_from_forgery with: :exception

  # optional just for fun
  helper_method :current_hit

  def current_hit
    hit = cookies['hit'].to_i
    hit += 1
    cookies['hit'] = hit
    hit
  end

  protected


  def set_layout
    if user_signed_in?
      "application"
    else
      devise_controller? ? "login" : "landing"
    end
  end

end
