require 'benchmark'
require_relative 'work'

puts Benchmark.measure ({|x|
  100.times do
    Worker.do_cpu_work
  end
})
