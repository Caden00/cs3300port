require 'rails_helper'

RSpec.feature "Projects", type: :feature do
  pending "add some scenarios (or delete) #{__FILE__}"
end

RSpec.feature "Projects", type: :feature do
  context "Create new project" do
    before(:each) do
      # Visit the new project
      visit new_project_path
      within("form") do
        # Create a project with a title
        fill_in "Title", with: "Test title"
      end
    end

    scenario "should be successful" do
      # Add the description to the project
      fill_in "Description", with: "Test description"
      # Hit the project button
      click_button "Create Project"
      # Look for success
      expect(page).to have_content("Project was successfully created")
    end

    scenario "should fail" do
      # Create project without title and desc
      click_button "Create Project"
      # Looking for desc fail
      expect(page).to have_content("Description can't be blank")
    end
  end

  # Update project test
  context "Update project" do
    let(:project) { Project.create(title: "Test title", description: "Test content") }
    before(:each) do
      # Go to the edit path
      visit edit_project_path(project)
    end

    
    scenario "should be successful" do
      within("form") do
        # Add new content to desc
        fill_in "Description", with: "New description content"
      end
      # Update project and look for suceess
      click_button "Update Project"
      expect(page).to have_content("Project was successfully updated")
    end

    scenario "should fail" do
      within("form") do
        # Fill the project with a blank desc
        fill_in "Description", with: ""
      end
      # Update and look for fail
      click_button "Update Project"
      expect(page).to have_content("Description can't be blank")
    end
  end

  # Project deletion
  context "Remove existing project" do
    let!(:project) { Project.create(title: "Test title", description: "Test content") }
    scenario "remove project" do
      # Go to destory link
      visit projects_path
      click_link "Destroy"
      # Should delete project response
      expect(page).to have_content("Project was successfully destroyed")
      expect(Project.count).to eq(0)
    end
  end
end