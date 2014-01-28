class Topicization < ActiveRecord::Base
  attr_accessible :created_at, :snapshot_id, :topic_id
  
  belongs_to :snapshot
  belongs_to :topic
end
