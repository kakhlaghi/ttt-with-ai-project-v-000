require_relative '../player.rb'
require 'pry'
module Players
class Computer < Player
  def move(board)
    sleep(1)
    move = nil
    if !board.taken?(5)
      move = "5"
  
    elsif board.cells.each.with_index {|cell,i| 
          if !board.taken?(i) 
            move = "#{i}"
          end }
        end
        move
    end

end
end
end