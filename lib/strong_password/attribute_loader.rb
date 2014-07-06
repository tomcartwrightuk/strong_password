require 'json'

class AttributeLoader

  attr_reader :attributes

  def initialize(attribute_file: File.expand_path('../../../attributes.json', __FILE__))
    attrs = JSON.parse(IO.read(attribute_file))['attributes']
    @attributes = attrs.map do |attr|
      regex = Regexp.new(attr['regex'])
      Attribute.new(attr['text'], regex)
    end
  end

end
