json.set! :data do
  json.array! @posts do |post|
    json.partial! 'posts/post', post: post
    json.url  "
              #{link_to_icon 'pages', post }
              #{link_to_icon 'edit', edit_post_path(post)}
              #{link_to_icon 'delete', post, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end