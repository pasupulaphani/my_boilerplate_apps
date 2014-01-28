require 'spec_helper'

describe "snapshots/index" do
  before(:each) do
    assign(:snapshots, [
      stub_model(Snapshot,
        :title => "Title",
        :disporder => 1,
        :displayed => false,
        :authors => "Authors",
        :abstract => "MyText",
        :popularity => 2,
        :download_count => 3,
        :thumb_image => "Thumb Image",
        :cover_image => "Cover Image",
        :full_image1 => "Full Image1",
        :full_image2 => "Full Image2",
        :full_image3 => "Full Image3",
        :full_pdf => "Full Pdf"
      ),
      stub_model(Snapshot,
        :title => "Title",
        :disporder => 1,
        :displayed => false,
        :authors => "Authors",
        :abstract => "MyText",
        :popularity => 2,
        :download_count => 3,
        :thumb_image => "Thumb Image",
        :cover_image => "Cover Image",
        :full_image1 => "Full Image1",
        :full_image2 => "Full Image2",
        :full_image3 => "Full Image3",
        :full_pdf => "Full Pdf"
      )
    ])
  end

  it "renders a list of snapshots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Authors".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Thumb Image".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Image".to_s, :count => 2
    assert_select "tr>td", :text => "Full Image1".to_s, :count => 2
    assert_select "tr>td", :text => "Full Image2".to_s, :count => 2
    assert_select "tr>td", :text => "Full Image3".to_s, :count => 2
    assert_select "tr>td", :text => "Full Pdf".to_s, :count => 2
  end
end
