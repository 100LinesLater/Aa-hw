class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
    print "New Game? (y/n)   "
    play if gets.chomp == "y"
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message 
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    counter = sequence_length
    until counter == 0
      print "#{seq[counter - 1]} "
      sleep(1.5)
      system "clear"
      counter -= 1
    end
  end

  def require_sequence
    print "Return sequence (ex: green, yellow, blue): "
    guess = gets.chomp.split(", ")
    @game_over = true unless seq == guess
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Good job! Next round..."
  end

  def game_over_message
    puts "Awww so close."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false 
    @seq = []
  end
end
