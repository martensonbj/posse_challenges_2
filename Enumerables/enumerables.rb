class Enums
  def self.any?(collection, condition)
    collection.each do |number|
      return true if condition.call(number)
    end
    false
  end
end

collection = [1, 2, 3, 4, 5]
condition = Proc.new { |a| a > 5}
Enums.any?(collection, condition)
