class Results
  attr_accessor :wines

  def initialize
    @wines = []
  end

  def total
    @wines.size
  end
end
