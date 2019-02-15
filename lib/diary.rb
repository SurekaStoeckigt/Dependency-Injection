require_relative 'entry.rb'

class Diary
  attr_reader :entries
  def initialize(entry_class = Entry)
    @entries = []
    @entry = entry_class
  end

  def add(title, body)
    #entry = Entry.new("","")
    @entries << @entry.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

# class CarFactory
#   def initialize(car_class = Car)
#     @car_class = car_class
#   end
#
#   def make_a_car
#     car = @car_class.new
#     car.drive_away
#   end
# end
#
# class Car
#   def drive_away
#     # ... whatever ...
#   end
# end
