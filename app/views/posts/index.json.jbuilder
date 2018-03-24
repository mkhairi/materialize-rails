json.set! :data do
  json.array! @posts do |post|
    json.partial! 'posts/post', post: post
    json.url  "
              #{link_to 'Show', post }
              #{link_to 'Edit', edit_post_path(post)}
              #{link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end