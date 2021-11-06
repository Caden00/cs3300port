RSpec.describe "hello spec" do
    # ...
    describe String do
      # This is going to create a new string
      let(:string) { String.new }
      it "should provide an empty string" do
        # This will check to see if the string is empty
        expect(string).to eq("")
      end
    end
  end