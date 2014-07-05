class Factories

  def self.attributes
    [
      Attribute.new("lowercase letters", /[a-z]/),
      Attribute.new("numbers", /[0-9]/)
    ]
  end

end
