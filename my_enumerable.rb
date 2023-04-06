# require './my_enumerable.rb'
module MyEnumerable
  def all?
    if block_given?
      each do |element|
        return false unless yield(element)
      end
      true
    else
      puts 'no block given'
    end
  end

  def any?
    if block_given?
      each do |element|
        return true if yield(element)
      end
      false
    else
      puts 'no block given'
    end
  end

  def filter
    if block_given?
      arr = []
      each do |element|
        arr.push(element) if yield(element)
      end
      arr
    else
      puts 'no block given'
    end
  end
end
