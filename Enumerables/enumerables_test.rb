require 'minitest/autorun'
require 'minitest/pride'
require_relative 'enumerables'

class EnumsTest < Minitest::Test

  def test_any
    collection = %w(cat dog walrus)

    condition = Proc.new { |animal| animal.length > 3 }

    assert_equal true, Enums.any?(collection, condition)
  end

  def test_select
    collection = %w(tennis soccer baseball)

    condition = Proc.new { |sport| sport == "soccer" }

    assert_equal ["soccer"], Enums.select(collection, condition)
  end

  def test_reduce_numbers
    collection = [1, 2, 3, 4, 5, 6]

    condition = Proc.new { |num| num }

    assert_equal 21, Enums.reduce(collection, condition)
  end

  def test_reduce_string
    collection = %w(cat dog bear)

    condition = Proc.new { |num| num }

    assert_equal "catdogbear", Enums.reduce(collection, condition)
  end

  def test_reject
    collection = [1, 2, 3, 4, 5, 6]

    condition = Proc.new { |num| num.even? }

    assert_equal [1, 3, 5], Enums.reject(collection, condition)
  end

end
