require 'byebug'

class Operations
  def initialize
    @continue = true
  end

  def hello cmd
    puts "you typed #{cmd}"
  end

  def goodbye
    @continue = false
    puts "you typed goodbye"
  end

  def continue?
    @continue
  end
end

ops = Operations.new

# KEYWDS = ["hello", "goodbye"]
# METHODS = [:hello, :goodbye]
#
# ops.public_send(METHODS[KEYWDS.find_index("hello")])

while ops.continue?
  print "> "
  cmd = gets
  keyword = cmd.split[0]
  if ["hello", "goodbye"].include? keyword
    ops.public_send(keyword, cmd)
  else
    puts "ERROR"
  end
end
