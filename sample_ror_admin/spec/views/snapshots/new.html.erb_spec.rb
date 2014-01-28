require 'spec_helper'

describe "snapshots/new" do
  before(:each) do
    assign(:snapshot, stub_model(Snapshot,
      :title => "MyString",
      :disporder => 1,
      :displayed => false,
      :authors => "MyString",
      :abstract => "MyText",
      :popularity => 1,
      :download_count => 1,
      :thumb_image => "MyString",
      :cover_image => "MyString",
      :full_image1 => "MyString",
      :full_image2 => "MyString",
      :full_image3 => "MyString",
      :full_pdf => "MyString"
    ).as_new_record)
  end

  it "renders new snapshot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => snapshots_path, :method => "post" do
      assert_select "input#snapshot_title", :name => "snapshot[title]"
      assert_select "input#snapshot_disporder", :name => "snapshot[disporder]"
      assert_select "input#snapshot_displayed", :name => "snapshot[displayed]"
      assert_select "input#snapshot_authors", :name => "snapshot[authors]"
      assert_select "textarea#snapshot_abstract", :name => "snapshot[abstract]"
      assert_select "input#snapshot_popularity", :name => "snapshot[popularity]"
      assert_select "input#snapshot_download_count", :name => "snapshot[download_count]"
      assert_select "input#snapshot_thumb_image", :name => "snapshot[thumb_image]"
      assert_select "input#snapshot_cover_image", :name => "snapshot[cover_image]"
      assert_select "input#snapshot_full_image1", :name => "snapshot[full_image1]"
      assert_select "input#snapshot_full_image2", :name => "snapshot[full_image2]"
      assert_select "input#snapshot_full_image3", :name => "snapshot[full_image3]"
      assert_select "input#snapshot_full_pdf", :name => "snapshot[full_pdf]"
    end
  end
end
