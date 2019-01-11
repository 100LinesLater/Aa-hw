class Stack 
    attr_reader :array

    def initialize
        @array = []
    end

    def push(el)
        @array.push(el)
    end

    def pop
        @array.pop
    end

    def peek
        @array.last
    end
end

class Queue
    attr_reader :array

    def initialize
        @array = []
    end

    def enqueue(el)
        @array.push(el)
    end

    def dequeue
        @array.shift
    end

    def peek 
        @array.first
    end
end