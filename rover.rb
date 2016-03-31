
class Rover
  attr_accessor :x, :y, :d
  def initialize(x = 0, y = 0, d = "N")
    @x = x
    @y = y
    @d = d
  end

  def robot_position
    puts "Rover is at (#{@x},#{@y}) facing => #{@d}"
  end

def read_instruction
  puts "Enter your direction: (M-move, L-left, R-right, or Q to quit)"
  user_input = gets.chomp.upcase.split("")
  user_input.each do |i|
              if i == "M"
                self.move
              elsif i == "L"
                self.turn_left
              elsif i == "R"
                self.turn_right
              elsif i == "Q"
                exit
              end
              robot_position
      end
      read_instruction
  end

  def turn_left
                if @d == "N"
                    @d = "W"
                elsif @d == "E"
                        @d = "N"
                elsif @d == "S"
                        @d = "E"
                elsif @d == "W"
                        @d = "S"
                end
                  robot_position
  end


  def turn_right
                if @d == "N"
                    @d = "E"
                elsif @d == "E"
                        @d = "S"
                elsif @d == "S"
                        @d = "W"
                elsif @d == "W"
                        @d = "N"
                end
                  robot_position
    end


  def move
    if @d == "E"
        @x += 1
    elsif @d == "W"
            @x -= 1
    elsif @d == "N"
            @y += 1
    elsif @d == "S"
            @y -= 1
    else
      "Can't undderstand your input"
    end
  end
end

rover = Rover.new
while true
  rover.read_instruction
  rover.robot_position
end
