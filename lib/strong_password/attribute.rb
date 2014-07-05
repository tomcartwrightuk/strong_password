class Attribute

  attr_reader :regex, :text
  attr_accessor :score

  def initialize(text, regex, options = {})
    @text = text
    @regex = regex
  end

  def score_pw(password)
    @score = password.scan(regex).length
  end

end
