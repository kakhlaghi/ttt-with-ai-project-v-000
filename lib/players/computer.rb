require_relative '../player.rb'
require 'pry'
module Players
class Computer < Player
  def move(board)
    sleep(1)
    move = nil
    if !board.taken?(5)
      move = "5"
    
    elsif !board.taken?(1) || !board.taken?(3)
      move = 
    
    
    elsif board.cells.each.with_index {|cell,index| 
          if !board.taken?(index+1) 
            move = "#{index+1}"
          end }
        move
    end

end
end
end