class Post < ActiveRecord::Base
  attr_accessor :gender, :birthday
  validates :title, :body, presence: :true

  has_many_attached :images
end
