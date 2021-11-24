require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "is a valid email" do
    expect(email).to be_valid
  end
  it "is a valid password" do
    expect(password).to be_valid
  end
end
