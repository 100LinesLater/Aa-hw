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

class Map
    attr_reader :array

    def initialize
        @array = []
    end

    def set(key, value)
        matched_key = @array.select {|el| el[0] == key}
        if @array.select {|el| el[0] == key}.empty?
            @array.push([key, value])
        else
            @array[@array.index(matched_key)] = [key, value]
        end
    end

    def get(key)
        @array.select {|el| el[0] == key}[1]
    end

    def delete(key)
        matched_key = @array.select {|el| el[0] == key}
        @array.delete_at(@array.index(matched_key))
    end

    def show
        @array
    end
end