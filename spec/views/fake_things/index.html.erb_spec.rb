require 'spec_helper'

describe "fake_things/index" do
  before(:each) do
    assign(:fake_things, [
      stub_model(FakeThing),
      stub_model(FakeThing)
    ])
  end

  it "renders a list of fake_things" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
