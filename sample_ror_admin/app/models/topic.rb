class Topic < ActiveRecord::Base
  attr_accessible :displayed, :disporder, :name
  
  has_many :topicizations, :dependent => :destroy
  has_many :snapshots, :through => :topicizations
  
end
