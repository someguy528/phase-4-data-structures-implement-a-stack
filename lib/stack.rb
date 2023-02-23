# your code here
class Stack
    attr_reader :stack, :limit

    def initialize(limit = nil )
        @stack =  []
        @limit = limit
    end

    def pop
        stack.pop
    end

    def push(value)
        if !full?
            stack.push(value)
        else
            raise Exception.new('Stack Overflow')
        end
    end

    def peek
        stack.last
        # stack[stack.length - 1]
    end

    def size
        stack.size
    end

    def empty?
        stack.size == 0 
    end

    def full?
        stack.size == limit 
    end

    def search(value)
        stack.each_with_index do |v,i|
            return size - 1 - i if v == value
        end
        return -1
    end

end