require 'spec_helper'

describe "fake_things/show" do
  before(:each) do
    @fake_thing = assign(:fake_thing, stub_model(FakeThing))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
