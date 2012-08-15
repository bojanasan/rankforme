require 'spec_helper'

describe "fake_things/new" do
  before(:each) do
    assign(:fake_thing, stub_model(FakeThing).as_new_record)
  end

  it "renders new fake_thing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fake_things_path, :method => "post" do
    end
  end
end
