class Cli

  attr_reader :scorer, :output

  def initialize(output, scorer = Scorer.new)
    @output = output
    @scorer = scorer
  end

  def score_password(password)
    score = scorer.get_score(password)
    output.puts "The score for your password is: #{score}"
  end
end
