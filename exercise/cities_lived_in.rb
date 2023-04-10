cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}

# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

cities = []
cities_lived_in.values.each do |city|
    city
    city.flat_map do |cit|
        cities << cit
    end
end

p cities.uniq

# OR

# cities = []
# cities_lived_in.each_value do |people|
#     people.flat_map do |city|
#         cities << city
#     end
# end

# P cities.uniq

#OR  

# cities_lived_in.fatten.uniq

# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]

# names = []
# cities_lived_in.find_all do |name, cities|
#     cities.include?("Philadelphia")
#     names << name
#     require 'pry'; binding.pry
# end
# p names

# # OR 

phila_names = []

cities_lived_in.each do |name, cities|
    cities.each do |cities|
        phila_names << name if cities.include?("Philadelphia")
    end
end
p phila_names

# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

city_pop = Hash.new(0)

cities_lived_in.each do |_, cities|
    cities.each do |city|
        city_pop[city] += 1
    end
end
p city_pop