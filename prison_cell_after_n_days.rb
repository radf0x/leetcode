class PrisonCell
  # Game rule:
  # if Left and Right is empty, mark current cell as 1
  # if Left or Right is not empty, mark current cell as 0
  def self.call(states = [1, 0, 0, 0, 0, 1, 0, 0], days = 7)
    return states if states.length != 8 || days < 1

    days.times do |i|
        prev_cell = 0
        next_cell = 0
        curr_cell = 0
        while curr_cell < states.length do
            if curr_cell < states.length - 1
                next_cell = states[curr_cell + 1]
            elsif curr_cell == states.length - 1
                next_cell = 0
            end
            
            if next_cell == prev_cell
                prev_cell = states[curr_cell]
                states[curr_cell] = 0
            else
                prev_cell = states[curr_cell]
                states[curr_cell] = 1
            end
            curr_cell += 1
        end
    end
    
    states
  end
end
