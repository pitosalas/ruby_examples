class Worker
  def self.do_cpu_work
    fib(25)
  end

  def self.fib(num)
    num < 2 ? num : fib(num - 1) + fib(num - 2)
  end
end
