require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
user_store = Store.new(name: "SaskaTel")
unless user_store.save
  user_store.errors.full_messages.each do |message|
    puts "error occured: #{message}" 
  end
end