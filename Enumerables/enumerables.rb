require 'pry'

class Enums
  def self.any?(collection, condition)
    collection.each do |element|
      return true if condition.call(element)
    end
    false
  end

  def self.select(collection, condition)
    output = []
    collection.each do |element|
      output.push(element) if condition.call(element)
    end
    return output
  end

  def self.reduce(collection, condition)
    if collection.first.class == Fixnum
      sum = 0
    else
      sum = ""
    end
    collection.each do |element|
      sum += condition.call(element)
    end
    return sum
  end

  def self.reject(collection, condition)
    output = []
    collection.each do |element|
      output.push(element) if !condition.call(element)
    end
    return output
  end

end
