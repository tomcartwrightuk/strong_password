require 'spec_helper'

describe AttributeLoader do
  describe "initialization" do

    it "should set an array of attributes" do
      attribute_loader = AttributeLoader.new
      expect(attribute_loader.attributes[0]).to be_a_kind_of(Attribute)
    end

  end
end
