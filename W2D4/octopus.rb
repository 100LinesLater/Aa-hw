class Octopus

    def initialize

    end

    def sluggish_octopus(arr)
        largest_fish = ""
        arr.each do |el1|
            arr.each do |el2|
                next if el1 == el2
                largest_fish = el2 if el2.length > largest_fish.length
            end
        end
        largest_fish
    end

    def dominant_octopus(arr)
        array = quick_sort(arr)
        array.last
    end

    def quick_sort(arr)
        return arr if arr.length <= 1
        piv = arr.first
        left = arr[1..-1].select {|el| piv.length > el.length}
        right = arr[1..-1].select {|el| piv.length <= el.length}

        quick_sort(left) + [piv] + quick_sort(right)
    end

    def clever_octopus(arr)
        largest_fish = ""
        arr.each do |el|
            largest_fish = el if el.length > largest_fish.length
        end
        largest_fish
    end
end

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh',
                    'fsh', 'fiiiissshhhhhh']

octopus = Octopus.new
p octopus.sluggish_octopus(fish.dup)
p octopus.dominant_octopus(fish.dup)
p octopus.clever_octopus(fish.dup)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ]

def slow_dance(dir, arr)
    pos = 0
    arr.each do |el|
        return pos if el == dir 
        pos += 1
    end
end

hash = {
    "up" => 0,
    "right-up" => 1, 
    "right" => 2, 
    "right-down" => 3, 
    "down" => 4, 
    "left-down" => 5, 
    "left" => 6, 
    "left-up" => 7
}

def constant_dance(dir, hash)
    hash[dir]
end

p slow_dance("right", tiles_array)
p constant_dance("left-down", hash)