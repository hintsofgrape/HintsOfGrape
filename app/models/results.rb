class Results
  attr_accessor :wines

  def initialize
    @wines = []
  end

  def total
    @wines.count
  end
end
