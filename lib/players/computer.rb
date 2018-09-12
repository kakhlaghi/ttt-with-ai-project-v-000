require_relative '../player.rb'
require 'pry'
module Players
class Computer < Player
  
  def move(board)
    sleep(1)
    rando = rand(9)
    move = nil
    if !board.taken?(5)
      move = "5"
    
    elsif board.turn_count == 2
      move = [1, 3, 7, 9].detect{|i| !board.taken?(i)}.to_s
  
    elsif board.taken?(rando)
      move = rando.to_s
    
    elsif board.cells.each.with_index {|cell,index| 
          if !board.taken?(index+1) 
            move = "#{index+1}"
          end }
        move
    end

end
end
end