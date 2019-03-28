require 'json'
class Account
  def self.get_balance
    @balance
  end

  def self.set_balance(n)
    @balance = n
  end
end

Account.set_balance(0)

threads = (1..20).map do |i|
  Thread.new(i) do
    5.times do
      sleep(0.1)
      Account.set_balance(Account.get_balance + 100)
      sleep(0.1)
      Account.set_balance(Account.get_balance - 100)
    end
  end
end

puts threads.to_json
threads.each { |t| t.join}
puts "Final Balance = #{Account.get_balance}"
