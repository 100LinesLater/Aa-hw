require 'LRU_Cache'

RSpec.describe "LRU Cache" do 

    subject(:cache) {LRU_Cache.new(4)}
    describe "#initialize" do 
        it "creates empty cache" do 
            expect(:cache.cache).to be_empty
        end

        it "sets caches size" do 
            expect(:cache.size).to eq(4)
        end
    end 
end