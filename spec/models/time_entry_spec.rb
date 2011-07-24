require 'spec_helper'

describe TimeEntry do
  it "should require a project" do
    time_entry = Factory.build(:time_entry)
    time_entry.save.should be_false
    #time_entry.errors[:project].
  end
end
