require 'set'

class RandomizedSet
  def initialize()
    @hash = {}
    @array = []
  end

  def insert(val)
    return false if @hash.has_key?(val)
    @array.push(val)
    @hash[val] = @array.length - 1
    return true
  end

  def remove(val)
    return false unless @hash.has_key?(val)
    index = @hash.delete(val)
    if @array.last != val
      last = @array.last
      @array[index] = last
      @hash[last] = index
    end
    @array.pop()
    return true
  end

  def get_random()
    if @array.empty?
      nil
    else
      @array[rand(@array.length)]
    end
  end
end

