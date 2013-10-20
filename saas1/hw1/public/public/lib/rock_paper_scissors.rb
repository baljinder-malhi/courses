class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.valid_strategy(strategy)
    valid = true

    if strategy == nil || !strategy.is_a?(String) || strategy.downcase.match(/[rps]/) == nil
      valid = false    
    end

    return valid
  end


  def self.winner(player1, player2)
    p1_strategy = player1[1].downcase
    p2_strategy = player2[1].downcase

#    puts "p1:" + p1_strategy
#    puts "p2:" + p2_strategy    
#    puts p1_strategy.downcase.match(/[rps]/)
#    puts p2_strategy.downcase.match(/[rps]/)

     if p1_strategy.match(/[rps]/) == nil || p2_strategy.match(/[rps]/) == nil
   puts "raise exceptions"   
      raise NoSuchStrategyError.new("Strategy must be one of R,P,S")
    end

    if p1_strategy == p2_strategy
      return player1
    else

      win_comb = ["rs", "sp", "pr"]
      win = win_comb.index(p1_strategy + p2_strategy)    
      return (win == nil) ? player2 : player1

    end
  end

  def self.tournament_winner(tournament)

     if tournament[0][0].is_a? String
       puts "found string: " + tournament[0][0]
       return winner(tournament[0], tournament[1])
     else 
       return winner(tournament_winner(tournament[0]),tournament_winner(tournament[1]))
     end
 end

end

#RockPaperScissors.winner(['Armando','R'], ['Dave','P'])
#RockPaperScissors.winner(['Armando','R'], ['Dave','w'])
#print RockPaperScissors.tournament_winner([['Armando','R'], ['Dave','P']])
#print RockPaperScissors.tournament_winner([
#          [ ["Armando", "P"], ["Dave", "S"] ],      
#          [ ["Richard", "R"], ["Michael", "S"] ]
#        ])
