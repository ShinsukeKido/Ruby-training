class Ticket
  attr_reader :paid_fare, :stamped_at

  def initialize(fare)
    @paid_fare = fare
  end

  def stamp(name)
    @stamped_at = name
  end
end
