number = [1, 2,  3, 4, 5]
new_numbers = []
number.each { |n| new_numbers << n * 10 }
puts new_numbers

new_numbers = number.map { |n| n * 10}
puts new_numbers

even_numbers = number.select { |n| n.even? }
puts even_numbers

[1,2,3,5,6].select { |n| n.odd?}
