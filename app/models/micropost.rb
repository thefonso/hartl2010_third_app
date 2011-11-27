class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  validates :content, :presence => true, :length => {:maximum => 140}
  validates :user_id, :presence => true
  
  #this tells it what order to place the post at 
  default_scope :order => 'microposts.created_at DESC' 
end
