class Garage
  def initialize
    @levels = []
  end

  def add_level level
    @levels << level
  end

  def remove_level level
    found = @levels.delete(level)
    raise ArgumentError, "Invalid Level" if found.nil?
  end

  def n_levels
    @levels.size
  end

  def level nth
    raise ArgumentError, "Invalid level index" if nth > @levels.size-1
    return @levels[nth]
  end
end
