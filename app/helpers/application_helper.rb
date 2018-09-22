module ApplicationHelper

  def render_source args={}
    @html_encoder ||= HTMLEntities.new
    raw(@html_encoder.encode(render args))
  end


  def link_to_icon icon, url_path, option={}
    default_class = %w(link-icon icon material-icons) << option[:class]
    option[:class] = default_class.join(" ")   
    option[:data] = {} unless  option[:data]
    #icon = content_tag(:i, icon, class: "material-icons").html_safe
    case icon
    when "pages"
      title = "Show"
    else
      title = icon.titleize
    end
    option[:title] = title
    
    option[:data][:toggle] = "tooltip"
    option[:data][:disable_with] = "#{content_tag(:i, 'more_horiz', class: 'icon material-icons').html_safe}"
    link_to icon, url_path, option
  end


end
