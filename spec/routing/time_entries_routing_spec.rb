require "spec_helper"

describe TimeEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/projects/1/time_entries").should route_to("time_entries#index", :project_id => "1")
    end

    it "routes to #new" do
      get("/projects/1/time_entries/new").should route_to("time_entries#new", :project_id => "1")
    end

    it "routes to #show" do
      get("/projects/1/time_entries/1").should route_to("time_entries#show", :id => "1", :project_id => "1")
    end

    it "routes to #edit" do
      get("/projects/1/time_entries/1/edit").should route_to("time_entries#edit", :id => "1", :project_id => "1")
    end

    it "routes to #create" do
      post("/projects/1/time_entries").should route_to("time_entries#create", :project_id => "1")
    end

    it "routes to #update" do
      put("/projects/1/time_entries/1").should route_to("time_entries#update", :id => "1", :project_id => "1")
    end

    it "routes to #destroy" do
      delete("/projects/1/time_entries/1").should route_to("time_entries#destroy", :id => "1", :project_id => "1")
    end

  end
end
