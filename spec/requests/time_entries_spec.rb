require 'spec_helper'

describe "TimeEntries" do
  describe "GET /time_entries" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      project = Factory(:project)
      get project_time_entries_path(project)
      response.status.should be(200)
    end
  end
end
