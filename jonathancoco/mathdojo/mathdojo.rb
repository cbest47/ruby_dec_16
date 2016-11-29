class MathDojo
    attr_accessor :result

    def initialize
        @result = 0
    end

    def add(*p)

        for i in 0..(p.length-1)
            if ((p[i].instance_of?Fixnum) || (p[i].instance_of?Float))
                @result = @result + p[i]
            elsif p[i].instance_of?Array
                p[i].each { |value| @result = @result + value}
            end
        end

        return self
    end

    def subtract(*p)

        sum = 0

        for i in 0..(p.length-1)
            if ((p[i].instance_of?Fixnum) || (p[i].instance_of?Float))
                sum  = sum + p[i]
            elsif p[i].instance_of?Array
                p[i].each { |value| sum = sum + value}
            end
        end

        @result = @result - sum

        return self
    end

end

puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
puts MathDojo.new.add(4, 5.6, [3,5,7,8], [2, 4.3, 1.25]).result
