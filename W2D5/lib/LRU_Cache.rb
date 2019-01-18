class LRUCache
  attr_reader :cache, :size
    def initialize(cache_size)
        @cache = []
        @size = cache_size
    end

    def count
      # returns number of elements currently in cache
      @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
        if @cache.include?(el)
            @cache.delete(el)
        end
        @cache.push(el)
        @cache.shift if count > @size
    end

    def show
      # shows the items in the cache, with the LRU item first
      puts @cache
    end

    private
    # helper methods go here!

  end