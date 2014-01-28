require 'spec_helper'

describe "snapshots/show" do
  before(:each) do
    @snapshot = assign(:snapshot, stub_model(Snapshot,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/Authors/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Thumb Image/)
    rendered.should match(/Cover Image/)
    rendered.should match(/Full Image1/)
    rendered.should match(/Full Image2/)
    rendered.should match(/Full Image3/)
    rendered.should match(/Full Pdf/)
  end
end
