class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable

  validates :user, :presence => true
  validates :comment, :presence => true
end
