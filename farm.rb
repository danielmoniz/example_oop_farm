
class Farm
  def self.display_status
    amount = 0
    puts "The farm has #{amount} harvested food so far."
  end
end

class Field
end

class Wheat < Field
  # produces 30 per hectare
end

class Corn < Field
  # produces 20 per hectare
end


def menu_options
  puts '--------------------'
  puts "status -> displays some information about the farm"
  puts '--------------------'
end


# putting our steps here for now
# ---------------------
menu_options
option = gets.chomp
if option == 'status'
  # run status method
  Farm.display_status
end



# ---------------------



farm = Farm.new
puts farm.inspect

field = Field.new
puts field.inspect

wheat_field = Wheat.new
puts wheat_field.inspect

corn_field = Corn.new
puts corn_field.inspect
