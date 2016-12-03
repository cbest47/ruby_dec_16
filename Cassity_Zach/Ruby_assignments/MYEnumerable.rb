module MyEnumerable
  def my_each
    for i in 0..self.length-1 #self.length the array passed in below
      puts self[i] #self refering to whatever number i is on
    end
  end
end
class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } #prints 1 2 3 4 in the terminal
