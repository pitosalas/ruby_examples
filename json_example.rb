require 'json'
class Person
  def initialize first, last, phone
    @first = first
    @last = last
    @num = phone
  end
  def to_h
    {first: @first, last: @last, phone: @num.number}
  end

  def self.from_h(hash)
    num = Phone.new(hash[:phone])
    Person.new(hash[:first], hash[:last], num)
  end
end

class Phone
  attr_accessor :number
  def initialize num
    @number = num
  end
end


p = Person.new "X", "Y", Phone.new('1234')
ph = p.to_h
h = Person.from_h(ph)
puts ph
