require "minitest/autorun"
require_relative "garage.rb"

describe Garage do
  before do
    @g = Garage.new
  end

  it "can add a level" do
    @g.add_level("foo")
    @g.n_levels.must_equal 1
  end

  it "can delete a level" do
    @g.add_level("foo")
    @g.remove_level("foo")
    @g.n_levels.must_equal 0
  end

  it "cant delete non existent level" do
    @g.add_level("foo")
    assert_raises(ArgumentError) {
      @g.remove_level("foo")
    }
  end

end
