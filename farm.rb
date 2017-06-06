
class Farm

end

class Field
end

class Wheat < Field
  #code
end

class Corn < Field
end



farm = Farm.new
puts farm.inspect

field = Field.new
puts field.inspect

wheat_field = Wheat.new
puts wheat_field.inspect

corn_field = Corn.new
puts corn_field.inspect
