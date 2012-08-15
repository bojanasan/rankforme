require 'spec_helper'

describe "fake_things/edit" do
  before(:each) do
    @fake_thing = assign(:fake_thing, stub_model(FakeThing))
  end

  it "renders the edit fake_thing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fake_things_path(@fake_thing), :method => "post" do
    end
  end
end
