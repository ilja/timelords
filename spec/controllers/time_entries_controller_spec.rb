require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TimeEntriesController do

  # This should return the minimal set of attributes required to create a valid
  # TimeEntry. As you add validations to TimeEntry, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { :project => Project.create! }
  end

  describe "GET index" do
    it "assigns all time_entries as @time_entries" do
      time_entry = TimeEntry.create! valid_attributes
      get :index, :project_id => time_entry.project.id
      assigns(:time_entries).should eq([time_entry])
    end
  end

  describe "GET show" do
    it "assigns the requested time_entry as @time_entry" do
      time_entry = TimeEntry.create! valid_attributes
      get :show, :id => time_entry.id.to_s, :project_id => time_entry.project.id
      assigns(:time_entry).should eq(time_entry)
    end
  end

  describe "GET new" do
    it "assigns a new time_entry as @time_entry" do
      project = Factory(:project)
      get :new, :project_id => project.id
      assigns(:time_entry).should be_a_new(TimeEntry)
    end
  end

  describe "GET edit" do
    it "assigns the requested time_entry as @time_entry" do
      time_entry = TimeEntry.create! valid_attributes
      get :edit, :id => time_entry.id.to_s, :project_id => time_entry.project.id
      assigns(:time_entry).should eq(time_entry)
    end
  end

  describe "POST create" do
   before(:each) do
     @project = Factory(:project)
   end
   describe "with valid params" do
      it "creates a new TimeEntry" do
        expect {
          post :create, :time_entry => valid_attributes, :project_id => @project.id
        }.to change(TimeEntry, :count).by(1)
      end

      it "assigns a newly created time_entry as @time_entry" do
        post :create, :time_entry => valid_attributes, :project_id => @project.id
        assigns(:time_entry).should be_a(TimeEntry)
        assigns(:time_entry).should be_persisted
      end

      it "redirects to the created time_entry" do
        post :create, :time_entry => valid_attributes, :project_id => @project.id
        response.should redirect_to([@project, TimeEntry.last])
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved time_entry as @time_entry" do
        # Trigger the behavior that occurs when invalid params are submitted
        TimeEntry.any_instance.stub(:save).and_return(false)
        post :create, :time_entry => {}, :project_id => @project.id
        assigns(:time_entry).should be_a_new(TimeEntry)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TimeEntry.any_instance.stub(:save).and_return(false)
        post :create, :time_entry => {}, :project_id => @project.id
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested time_entry" do
        time_entry = TimeEntry.create! valid_attributes
        # Assuming there are no other time_entries in the database, this
        # specifies that the TimeEntry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TimeEntry.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => time_entry.id, :time_entry => {'these' => 'params'}, :project_id => time_entry.project.id
      end

      it "assigns the requested time_entry as @time_entry" do
        time_entry = TimeEntry.create! valid_attributes
        put :update, :id => time_entry.id, :time_entry => valid_attributes, :project_id => time_entry.project.id
        assigns(:time_entry).should eq(time_entry)
      end

      it "redirects to the time_entry" do
        time_entry = TimeEntry.create! valid_attributes
        put :update, :id => time_entry.id, :time_entry => valid_attributes, :project_id => time_entry.project.id
        response.should redirect_to([time_entry.project, time_entry])
      end
    end

    describe "with invalid params" do
      it "assigns the time_entry as @time_entry" do
        time_entry = TimeEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TimeEntry.any_instance.stub(:save).and_return(false)
        put :update, :id => time_entry.id.to_s, :time_entry => {}, :project_id => time_entry.project.id
        assigns(:time_entry).should eq(time_entry)
      end

      it "re-renders the 'edit' template" do
        time_entry = TimeEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TimeEntry.any_instance.stub(:save).and_return(false)
        put :update, :id => time_entry.id.to_s, :time_entry => {}, :project_id => time_entry.project.id
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested time_entry" do
      time_entry = TimeEntry.create! valid_attributes
      expect {
        delete :destroy, :id => time_entry.id.to_s, :project_id => time_entry.project.id
      }.to change(TimeEntry, :count).by(-1)
    end

    it "redirects to the time_entries list" do
      time_entry = TimeEntry.create! valid_attributes
      delete :destroy, :id => time_entry.id.to_s, :project_id => time_entry.project.id
      response.should redirect_to(project_time_entries_url(time_entry.project))
    end
  end

end
