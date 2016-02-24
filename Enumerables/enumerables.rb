require 'pry'

class Enums
  def self.any?(collection, condition)
    collection.each do |number|
      return true if condition.call(number)
    end
    false
  end

  def self.select(collection, condition)
    output = []
    collection.each do |number|
      output.push(number) if condition.call(number)
    end
    return output
  end

  def self.reduce(collection, condition)
    # output = []
    collection.each do |element|
      # reduction = condition.call(element)
      # output.push(reduction)
      element += condition.call(element)
      binding.pry
    end
    return element
  end

  def self.reject(collection, condition)
    output = []
    collection.each do |number|
      output.push(number) if !condition.call(number)
    end
    return output
  end

end

# collection = ["Rachel", "Joanne", "Nate"]
# condition = Proc.new { |a| "#{a} works at Turing." }
# puts Enums.reduce(collection, condition)
