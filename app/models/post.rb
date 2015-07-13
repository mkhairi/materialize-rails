class Post < ActiveRecord::Base
  validates :title, :body, presence: :true
end
