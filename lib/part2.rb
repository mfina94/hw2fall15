class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.size == 2
  
  player1 = Array.new
  player2 = Array.new
  
  player1 = game[0]
  player2 = game[1]
  
  
  if !((player1[1] == "R") || (player1[1] == "S") || (player1[1] == "P")) || !((player2[1] == "R") || (player2[1] == "S") || (player2[1] == "P"))
    raise NoSuchStrategyError 
  end
  
  choice1 = player1[1]
  choice2 = player2[1]
  
  if choice1 == choice2
    return player1
  end
  
  if (choice1 == "S" && choice2 == "P") || (choice1 == "P" && choice2 == "R") || (choice1 == "R" && choice2 == "S")
    return player1
  end
  
  if (choice2 == "S" && choice1 == "P") || (choice2 == "P" && choice1 == "R") || (choice2 == "R" && choice1 == "S")
    return player2    
  end
end

def rps_tournament_winner(tournament)
  tempBracket = tournament
  levels = 0
  while !(tempBracket.instance_of? String) do
    levels = levels + 1
    tempBracket = tempBracket[0]
  end
  if levels == 2
    return rps_game_winner(tournament)
  else
    temp1 = tournament.fetch(0)
    temp2 = tournament.fetch(1)
    return rps_tournament_winner([rps_tournament_winner(temp1),rps_tournament_winner(temp2)])
  end
end