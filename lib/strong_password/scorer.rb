class Scorer

  attr_reader :attributes

  def initialize(attributes = AttributeLoader.new.attributes, options = {})
    @attributes = attributes
  end

  def get_score(password)
    matching_attr = []
    attributes.each do |attr|
      attr.score_pw(password)
    end
    attributes.map{ |attr| attr.score }.reduce(:+)
  end

end
