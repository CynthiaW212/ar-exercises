require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Add some data into employees. Here's an example of one (note how it differs from how you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Cindy", last_name: "Yang", hourly_rate: 80)
@store2.employees.create(first_name: "David", last_name: "Gothen", hourly_rate: 70)
@store2.employees.create(first_name: "Nathem", last_name: "Loise", hourly_rate: 30)
@store2.employees.create(first_name: "Nathem", last_name: "Loise", hourly_rate: 30)

