
class Farm
  @@total_food = []
  @@fields = []

  def self.display_status
    total = 0
    @@total_food.each do |amount|
      total += amount
    end
    puts "The farm has #{total} harvested food so far."
  end

  def new_field
    puts "What kind of field is it: corn or wheat?"
    field_type = gets.chomp
    puts "How large is the field in hectares?"
    field_size = gets.to_i
    puts "Added a #{field_type} field of #{field_size} hectares!"

    field = Field.new
    @@fields << field
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
  puts "field -> adds a new field"
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
# puts farm.inspect

farm.new_field

field = Field.new
# puts field.inspect

wheat_field = Wheat.new
# puts wheat_field.inspect

corn_field = Corn.new
# puts corn_field.inspect
