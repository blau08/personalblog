class Post < ActiveRecord::Base
  has_many :comments, :as => :commentable
  validates :author, :presence => true
  validates :content, :presence => true
end
