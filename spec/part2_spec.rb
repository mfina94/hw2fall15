require 'part2.rb'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

describe "#rps_game_winner" do
  it "should be defined" do
    lambda { rps_game_winner([["X", "P"], ["Y", "S"]]) }.should_not raise_error
  end


  # this is given for free in the outline
  it "should raise WrongNumberOfPlayersError if there are not exactly two players" do
    lambda { rps_game_winner([ ["Allen", "S"] ]) }.should raise_error, "No error raised for incorrect number of players"
  end
end

describe "#rps_tournament_winner" do
  it "should be defined" do
    lambda { rps_tournament_winner([[[[["X", "P"], ["Y", "S"]],[["B", "R"], ["A", "S"]]],[[["C", "P"], ["D", "R"]],[["Z", "R"], ["W", "S"]]]],[[[["X", "R"], ["Y", "S"]],[["B", "R"], ["A", "S"]]],[[["C", "P"], ["D", "R"]],[["Z", "R"], ["W", "S"]]]]]) }.should_not raise_error
    #lambda { rps_tournament_winner([[["X", "P"], ["Y", "S"]],[["B", "R"], ["A", "S"]]]) }.should_not raise_error
  
  end
end
