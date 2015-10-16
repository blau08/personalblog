class Post < ActiveRecord::Base
  has_many :comments
  validates :author, :presence => true
  validates :content, :presence => true
end
