# class House
#     #replace reader and writer methods, but with no validationls

#     attr_accessor :address, :owner
#     #attribute reader - replace get and set methods
#     # attr_reader :address
#     # attr_writer :address 
#     #add instance variables (unqiue data) using @ sign
#     def initialize(address, owner, num_of_rooms)
#         @address = address
#         @owner = owner
#         @num_of_rooms = num_of_rooms  
#     end
    
#     #methods
#     def set_num_of_rooms(num_of_rooms)
#         @num_of_rooms = num_of_rooms
#     end

#     def get_num_of_rooms
#         @num_of_rooms
#     end

#     # def set_owner(owner)
#     #     @owner = owner
#     # end

#     # def get_owner
#     #     @owner
#     # end

#     # def set_address(address)
#     #     @address = address
#     # end

#     # def get_address
#     #     @address
#     # end

#     def open_door
#         p "open door"
#     end
  
#     def close_door
#       p "close door"
#     end
# end

# #instantiate new instance of house

# my_house = House.new('413 w 24th', 'Samantha', 3)
# #setter method
# my_house.address = '418 W. 24th Street'
# #getter method
# p my_house.address

# #my_house.set_owner('Samantha')
# my_house.owner = "Clint"
# p my_house.owner

# p my_house.get_num_of_rooms
#p my_house
#call methods defined in house useing dot notation
#my_house.open_door

#######################
#INHERITANCE
#######################

class Vehicle

    @@parent_class = 'Vehicle'
    @@Vehicle_count = 0
    @@factory = 'Buick'

    # This is our constructor with instance variables
  def initialize(odometer, gas_used)
    @this_odometer = odometer
    @this_gas_used = gas_used
    @@Vehicle_count +=1
  end

  def Vehicle.count
        @@Vehicle_count
    end



  def sound_horn
    p "Beep! Beep!"
  end

  def accelerate
    p "Vroom ... Vroom!!"
  end

  def check_mileage
    p @this_odometer / @this_gas_used
  end

  def print_factory
    p "This vehicle was made in #{@@factory}"
  end
end

# Car class inherit < from Vehicle class
class Car < Vehicle
    attr_reader :model
    def initialize(odometer, gas_used, model)
        super(odometer, gas_used)
        @model = model
    end
    def accelerate
         super
         'revving my engine'
    end
end
# Our first instance
my_car = Car.new(10000, 100, 'wrangler')
 #p my_car.accelerate
#  my_car.sound_horn
#  my_car.check_mileage
 p my_car.model
class Truck < Vehicle
end
my_truck = Truck.new(20000, 200)
# my_truck.accelerate
# my_truck.sound_horn
# my_truck.check_mileage
# my_truck.print_factory

#p Vehicle.count
