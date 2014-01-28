require 'spec_helper'

describe "topics/new" do
  before(:each) do
    assign(:topic, stub_model(Topic,
      :name => "MyString",
      :disporder => 1,
      :displayed => false
    ).as_new_record)
  end

  it "renders new topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topics_path, :method => "post" do
      assert_select "input#topic_name", :name => "topic[name]"
      assert_select "input#topic_disporder", :name => "topic[disporder]"
      assert_select "input#topic_displayed", :name => "topic[displayed]"
    end
  end
end
