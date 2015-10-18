# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
# -Create Car Class with attributes of model and color.
#   -Create method distance that accpets distance as an argument
#   -create mileage method
#   -create a method to display last move

#   create Drive class
#       -Create method distance that accpets distance as an argument
# - create a method speed for current speed
#   - create a method turn that accepts left and right as arguments
#   - create a method velocity (maybe in speed method)
#   -create stop method (maybe in velocity)





# 3. Initial Solution


  class Car

    @@display = display
    attr_reader :car





    def initialize(model, color)

        @model= model
        @color= color


    end
  end


  class Drive

    def initialize
      @ride= Car.new("Ford", "Blue")
      @@display = 0

    end

    def distance(miles)
      puts "Your #{@ride.car} drove #{miles}."
      @@display += miles

    end

    def speed(mph)
      puts "Your speed is #{mph}."
      @mph = mph
    end

    def turn(direction)
      if direction == "left"
        puts "You've turned left"
      elsif direction == "right"
        puts "You've turned right"
      end

    end

#     def mileage
#       puts "current mileage is #{}"
#     end

      def accelerate(num)
        puts "You are now driving #{@mph+num}"
      end

      def decelerate(num)
        puts "You are now driving #{@mph-num}"
      end

      def stop
        puts "You stopped"
      end

    def display
      puts "Current mileage #{@@display}"

    end

end

# car= Car.new("Ford", "Blue")
# car= Car.new("Ford", "Blue")
drive= Drive.new
drive.distance(0.25)
drive.speed(25)
drive.stop
drive.turn("right")
drive.distance(1.5)
drive.accelerate(10)
drive.speed(35)
drive.decelerate(20)
drive.distance(0.25)
drive.stop
drive.turn("left")
drive.distance(1.4)
drive.speed(35)
drive.stop
drive.display


# Create a new car of your desired model and type
# Drive .25 miles (speed limit is 25 mph)
# At the stop sign, turn right
# Drive 1.5 miles (speed limit is 35 mph)
# At the school zone, check your speed
# Slow down to speed limit 15 mph
# Drive .25 miles more miles
# At the stop sign, turn left
# Drive 1.4 miles (speed limit is 35 mph)
# Stop at your destination
# Log your total distance travelled

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE



