x = {:firstname => "Colby", :lastname => "Horan", :age => 34}

puts x[:firstname]
puts x[:lastname]
puts x[:age]

x.delete(:age)

puts x.empty?

puts x.has_key? :lastname

puts x.has_value? "Colby"