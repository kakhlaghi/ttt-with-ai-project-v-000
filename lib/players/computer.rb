require_relative '../player.rb'
require 'pry'
module Players
class Computer < Player
  def move(board)
    sleep(1)
    move = nil
    if !board.taken?(5)
      move = "5"
  
    elsif for i in [1,3,7,9]
        board.cells.each {|cell| 
          if !board.taken?(i) 
            move = "#{i}"
          else
            move = "#{i+1}"
          end }
        end
        move
    end

end
end
end