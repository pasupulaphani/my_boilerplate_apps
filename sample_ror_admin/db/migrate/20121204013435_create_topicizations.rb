class CreateTopicizations < ActiveRecord::Migration
  def change
    create_table :topicizations do |t|
      t.integer :topic_id
      t.integer :snapshot_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
