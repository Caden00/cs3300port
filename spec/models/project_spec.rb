require "rails_helper"

RSpec.describe Project, type: :model do
  context "validations tests" do
    it "ensures the title is present" do
      # Try a project with just a desc
      project = Project.new(description: "Content of the description")
      # Looking for a fail
      expect(project.valid?).to eq(false)
    end

    
    it "should be able to save project" do
      # Checks title and desc
      project = Project.new(title: "Title", description: "Some description content goes here")
      # Looking for a true response with both full
      expect(project.save).to eq(true)
    end
  end

  context "scopes tests" do

  end
end

# Creates a series of projects with necessary componets
RSpec.describe Project, type: :model do

  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
    end

    # Looks for all 3 projects to be made
    it "should return all projects" do
      expect(Project.count).to eq(3)
    end

  end
end