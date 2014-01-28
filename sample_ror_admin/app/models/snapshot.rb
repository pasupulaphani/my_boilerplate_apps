class Snapshot < ActiveRecord::Base
  attr_accessible :abstract, :authors, :cover_image, :displayed, :disporder, \
                  :download_count, :full_image1, :full_image2, :full_image3, \
                  :full_pdf, :popularity, :publication_date, :thumb_image, :title, \
                  :topicizations_attributes
  
  mount_uploader :thumb_image, SnapshotUploader
  mount_uploader :cover_image, SnapshotUploader
  mount_uploader :full_image1, SnapshotUploader
  mount_uploader :full_image2, SnapshotUploader
  mount_uploader :full_image3, SnapshotUploader
  mount_uploader :full_pdf, SnapshotUploader
  
  has_many :topicizations, :dependent => :destroy
  has_many :topics, :through => :topicizations
  
  accepts_nested_attributes_for :topicizations, :allow_destroy => true
  
end
