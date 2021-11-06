require "rails_helper"

# This rspec will check the equation
RSpec.describe "The math below is right..." do
  it "should equal 42" do
    # Checks that 6*7 = 42
    expect(6 * 7).to eq(42)
  end
end