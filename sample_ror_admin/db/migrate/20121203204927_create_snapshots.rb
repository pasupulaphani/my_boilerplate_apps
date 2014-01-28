class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.string :title
      t.datetime :publication_date
      t.integer :disporder
      t.boolean :displayed
      t.string :authors
      t.text :abstract
      t.integer :popularity
      t.integer :download_count
      t.string :thumb_image
      t.string :cover_image
      t.string :full_image1
      t.string :full_image2
      t.string :full_image3
      t.string :full_pdf

      t.timestamps
    end
  end
end
