class AttributeFinder

  attr_reader :attributes

  def initialize(attributes, options = {})
    @attributes = attributes
  end

  def find_attributes(password)
    matching_attr = []
    attributes.each do |attr|
      matching_attr.push(attr) if attr[:regex].match(password)
    end
  end
end
