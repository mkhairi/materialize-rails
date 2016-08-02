class Post < ActiveRecord::Base
  attr_accessor :gender, :birthday
  validates :title, :body, presence: :true
end
