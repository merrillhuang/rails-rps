class ZebraController < ApplicationController
  def rock
    @random_move = ["rock", "paper", "scissors"].sample
    @result = winner("rock", @random_move)
    render({ :template => "game_templates/play_rock"})
  end

  def paper
    @random_move = ["rock", "paper", "scissors"].sample
    @result = winner("paper", @random_move)
    render({ :template => "game_templates/play_paper"})
  end

  def scissors
    @random_move = ["rock", "paper", "scissors"].sample
    @result = winner("scissors", @random_move)
    render({ :template => "game_templates/play_scissors"})
  end

  def rules
    render( { :template => "layouts/rules"})
  end

  def winner(player_choice, computer_choice)
    case player_choice
    when "rock"
      if computer_choice == "rock"
        return "tied"
      elsif computer_choice == "paper"
        return "lost"
      else
        return "won"
      end
    when "paper"
      if computer_choice == "paper"
        return "tied"
      elsif computer_choice == "scissors"
        return "lost"
      else
        return "won"
      end
    when "scissors"
      if computer_choice == "scissors"
        return "tied"
      elsif computer_choice == "rock"
        return "lost"
      else
        return "won"
      end
    end
  end
end
