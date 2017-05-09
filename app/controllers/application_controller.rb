require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery with: :exception

  helper_method :current_hit

  def current_hit
    hit = cookies['hit'].to_i
    hit += 1
    cookies['hit'] = hit
    hit
  end

end
