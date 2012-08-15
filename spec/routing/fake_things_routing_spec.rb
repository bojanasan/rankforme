require "spec_helper"

describe FakeThingsController do
  describe "routing" do

    it "routes to #index" do
      get("/fake_things").should route_to("fake_things#index")
    end

    it "routes to #new" do
      get("/fake_things/new").should route_to("fake_things#new")
    end

    it "routes to #show" do
      get("/fake_things/1").should route_to("fake_things#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fake_things/1/edit").should route_to("fake_things#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fake_things").should route_to("fake_things#create")
    end

    it "routes to #update" do
      put("/fake_things/1").should route_to("fake_things#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fake_things/1").should route_to("fake_things#destroy", :id => "1")
    end

  end
end
