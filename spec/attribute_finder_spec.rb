require 'spec_helper'

describe AttributeFinder do
  
  describe "#find_attributes" do
    let(:attributes) {[{name: "letters", regex: /[a-zA-Z]/}, {name: "numbers", regex: /[0..9]/}]}
    let(:attribute_finder) {AttributeFinder.new(attributes)}
    it "return should return the attributes found in a given password" do
      password = "abcd1234"
      expect(attribute_finder.find_attributes(password)).to eq attributes
    end

    it "should  return an empty array when no matches are found" do
      password = "-$%^"
      expect(attribute_finder.find_attributes(password)).to eq attributes
    end
  end

end
