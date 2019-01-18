require 'LRU_Cache'

RSpec.describe "LRU Cache" do 

    subject(:lru) {LRUCache.new(4)}
    describe "#initialize" do 
        it "creates empty cache" do 
            expect(lru.cache).to be_empty
        end

        it "sets caches size" do 
            expect(lru.size).to eq(4)
        end
    end 

    describe "#count" do 
        context "add to cache" do 
            before do 
                lru.add("muffin")
                lru.add("bagel")
                lru.add("muffin")
                lru.add(2)
            end
            it "counts added items" do 
                expect(lru.count).to eq(3)
            end
        end
    end

    describe "#show" do 
        context "add to cache past capacity" do 
            before do 
                lru.add("muffin")
                lru.add("bagel")
                lru.add("muffin")
                lru.add(2)
                lru.add({a: 2, b: 4})
                lru.add("croissant")
                lru.add(2)
            end
            it "shows " do 
                expect('["muffin", {a: 2, b: 4}, "croissant", 2]')
            end
        end
    end
end

# johnny_cache = LRUCache.new(4)

#   johnny_cache.add("I walk the line")
#   johnny_cache.add(5)

#   johnny_cache.count # => returns 2

#   johnny_cache.add([1,2,3])
#   johnny_cache.add(5)
#   johnny_cache.add(-5)
#   johnny_cache.add({a: 1, b: 2, c: 3})
#   johnny_cache.add([1,2,3,4])
#   johnny_cache.add("I walk the line")
#   johnny_cache.add(:ring_of_fire)
#   johnny_cache.add("I walk the line")
#   johnny_cache.add({a: 1, b: 2, c: 3})


#   johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]