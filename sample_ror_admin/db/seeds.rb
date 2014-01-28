# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

puts '###################### Adding Users #############################'

user = User.create! :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.email

user2 = User.create! :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.email

puts '###################### Adding Topics #############################'

disp_ord = 0

["topic_1", "topic_2"].each do |topic|
  
  disp_ord = 5 + disp_ord
  
  t = Topic.create!(:name => topic, :displayed => true, :disporder => disp_ord)
  puts 'New topic created: ' << t.name
  
end

puts '###################### adding Snapshots #############################'

snapshot = Snapshot.create!(:title => 'Snapshots I', :displayed => true, :disporder => 5, \
           :publication_date => '2007-02-09', :authors => 'abc and gefg', \
           :thumb_image => 'Snapshots1.jpg', :cover_image => 'Snapshotsci.jpg',\
           :full_image1 => 'Snapshots1-Page1.jpg', :full_image2 => 'Snapshots-Page2.jpg',\
           :full_pdf => 'Snapshots1_full.pdf', :download_count => 0, :popularity => 0)
puts 'New snapshot created: ' << snapshot.title

snapshot = Snapshot.create!(:title => 'Snapshots II', :displayed => true, :disporder => 5, \
           :publication_date => '2007-02-09', :authors => 'abc1 and gefg2', \
           :thumb_image => 'Snapshots2.jpg', :cover_image => 'Snapshotsci2.jpg',\
           :full_image1 => 'Snapshots2-Page1.jpg', :full_image2 => 'Snapshots2-Page2.jpg',\
           :full_pdf => 'Snapshots2_full.pdf', :download_count => 0, :popularity => 0)
puts 'New snapshot created: ' << snapshot.title


puts '###################### adding topicizations #############################'


[ \
  ["topic_1","Snapshots I"],
  ["topic_1","Snapshots II"],
  ["topic_2","Snapshots II"]
].each do |topic,snapshot|
  
  Topicization.create!(:topic_id => Topic.find_by_name(topic).id, \
                        :snapshot_id => Snapshot.find_by_title(snapshot).id)
  
  printf("\n New map created between topic " + topic + " and shapshot " + snapshot)

end