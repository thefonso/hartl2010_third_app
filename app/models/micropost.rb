class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  #this tells it what order to place the post at 
  default_scope :order => 'microposts.created_at DESC' 
end
