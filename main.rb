def knight_moves(start, end_pos)
    moves = [[-1, -2], [-2, -1], [-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2]]
    queue = [[start]]
    visited = []
    answer = nil
    loop do
        current = queue.shift
        moves.each do |move|
            new_move = current.dup()
            new_x = new_move[-1][0] + move[0]
            new_y = new_move[-1][1] + move[1]
            new_pos = [new_x, new_y]
            if (new_x in (0..7)) && (new_y in (0..7))
                if visited.include?(new_pos)
                    next
                else
                    new_move << new_pos
                    if new_pos == end_pos
                        answer = new_move
                    end
                    queue << new_move
                end
            end
        end
        visited << current[-1]
        if answer != nil 
            break
        end
    end
    return answer
end

p knight_moves([6, 7], [0, 0])