class Comment < ActiveRecord::Base
  belongs_to :post

  validates :user, :presence => true
  validates :comment, :presence => true
end
