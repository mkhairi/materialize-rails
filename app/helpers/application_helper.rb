module ApplicationHelper

  def render_source args={}
    @html_encoder ||= HTMLEntities.new
    raw(@html_encoder.encode(render args))
  end


end
