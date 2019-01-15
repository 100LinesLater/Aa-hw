class Board
  attr_accessor :cups
  attr_reader :name1, :name2

  def initialize(name1, name2)
    @cups = Array.new(14) {[]}
    @cups = place_stones
    @name1 = name1 
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.map.with_index do |cup, idx|
      unless idx == 6 || idx == 13
        [:stone, :stone, :stone, :stone]
      else 
        []
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos >= 13 || start_pos == 6
      raise "Invalid starting cup"
      false 
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
      false
    else
      true
    end
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos].length
    @cups[start_pos].clear

    not_player_cup_idx = 6
    if current_player_name == @name1 
      not_player_cup_idx = 13
    end

    until stones == 0
      start_pos += 1
      if start_pos % 14 == not_player_cup_idx
        start_pos += 1
      end
      @cups[start_pos % 14] << :stone
      stones -= 1
    end
    render
    next_turn(start_pos % 14)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    count1 = 0
    count2 = 0
    @cups[0..5].each {|el| count1 += el.length}
    @cups[7..12].each {|el| count2 += el.length}
    count1 == 0 || count2 == 0
  end

  def winner
    if @cups[6].length == @cups[13].length
      :draw
    elsif @cups[6].length > @cups[13].length
      @name1
    else
      @name2 
    end
  end
end
