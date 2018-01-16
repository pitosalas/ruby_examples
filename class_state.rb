class Artist

  def self.add_artist artist
    @artists ||= []
    @artists << artist
  end

  def self.artists
    @artists ||= []
    @artists.each { |x| x.to_s }
  end
  def initialize name
    @name  = name
  end

  def to_s
    @name
  end
end

art = Artist.new "John"
art2 = Artist.new "Jane"
Artist.add_artist art
Artist.add_artist art2

puts Artist.artists
