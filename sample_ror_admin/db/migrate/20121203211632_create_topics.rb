class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :disporder
      t.boolean :displayed

      t.timestamps
    end
  end
end
