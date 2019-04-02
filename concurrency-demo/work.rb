class Worker
  def self.do_cpu_work(n=25)
    fib(n)
  end

  def self.fib(num)
    num < 2 ? num : fib(num - 1) + fib(num - 2)
  end
end
