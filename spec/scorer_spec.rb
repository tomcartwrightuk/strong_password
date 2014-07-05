require 'spec_helper'

describe Scorer do
  
  describe "#score_password" do

    let(:attributes) {Factories.attributes}
    let(:scorer) {Scorer.new(attributes)}

    it "return should return the attributes found in a given password" do
      password = "abcd1234"
      expect(scorer.get_score(password)).to eq 8
    end

    it "should  return an empty array when no matches are found" do
      password = "-$%^"
      expect(scorer.get_score(password)).to eq 0
    end
  end

end
