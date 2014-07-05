require 'spec_helper'

describe Attribute do
  describe "#count" do
    it "should return the number of occurences of a given attribute" do
      attribute = Attribute.new("upper case letters", /[A-Z]/) 
      expect(attribute.score_pw("AAA")).to eq 3
    end

    it "should return 0 for no occurences of the attribute" do
      attribute = Attribute.new("upper case letters", /[A-Z]/) 
      expect(attribute.score_pw("bbb")).to eq 0
    end
  end
end
