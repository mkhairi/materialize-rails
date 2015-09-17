class Post < ActiveRecord::Base
  attr_accessor :gender
  validates :title, :body, presence: :true
end
