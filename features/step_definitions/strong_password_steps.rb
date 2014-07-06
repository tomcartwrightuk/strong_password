class Output
  attr_accessor :messages

  def initialize
    @messages = []
  end

  def puts(message)
    @messages.push(message)
  end
end

output = Output.new
cli = Cli.new(output)

Given(/^I run the cli with the password "(.*?)"$/) do |pw|
  cli.score_password(pw)
end

Then(/^I should see "(.*?)"$/) do |msg|
  expect(output.messages).to include msg
end
