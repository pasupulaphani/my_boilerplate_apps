require 'spec_helper'

describe "topics/edit" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :name => "MyString",
      :disporder => 1,
      :displayed => false
    ))
  end

  it "renders the edit topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topics_path(@topic), :method => "post" do
      assert_select "input#topic_name", :name => "topic[name]"
      assert_select "input#topic_disporder", :name => "topic[disporder]"
      assert_select "input#topic_displayed", :name => "topic[displayed]"
    end
  end
end
