grades = { "Jane Doe" => 10, "Jim Doe" => 6, "Kris Kringle" => 8 }

puts grades

grades.delete("Jim Doe")

puts grades

puts grades.empty?

puts grades.has_key?("Kris Kringle")

puts grades.has_value?(8)

puts grades.has_value?(3)

puts grades.keys