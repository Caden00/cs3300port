require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
    
    # Add this
    login_user

    let(:valid_attributes) {
        { :title => "Test title!", :description => "This is a test description", :status => "draft" }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        login_user
        it "returns a success response" do
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
        end
    end

end
