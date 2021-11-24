require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  # Looks at the index page
  context "GET #index" do
    it "returns a success response" do
      get :index
      # Should get a success response
      expect(response).to be_success
    end
  end

  context "GET #show" do
    # Create a project with a title and desc
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      # Should get back a success from creating
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end