class Cat # Real world object
  attr_reader :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end

  def dye!(new_color)
    @color = new_color
  end
end

def puts_cat_info(cat)
  puts "#{cat.name} is #{cat.color}"
end

# Test
garfield = Cat.new("Garfield", "red")
blackie = Cat.new("Blackie", "black")

puts_cat_info(garfield)
puts_cat_info(blackie)
garfield.dye!("black")
puts_cat_info(garfield)

