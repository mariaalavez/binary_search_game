require 'byebug'

class BinarySearchGame

  def initialize
    @round = 1
  end

  def ask_max_value
    puts "Choose the amount of elements in the guessing array"
    n = gets.chomp.to_i
  end

  def create_array
    max_value = ask_max_value
    sorted_array = (1..max_value).to_a
  end

  def elements_in_array(sorted_array)
    array_size = sorted_array.size
  end

  def calculate_guessing_rounds(array_size)
    k = Math.log2(array_size) + 1
    k.floor
  end

  def play
    size = elements_in_array(create_array)
    calculate_guessing_rounds(size)
  end


end

game = BinarySearchGame.new
game.play
