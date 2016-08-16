class Building
  attr_reader :apartments

  def initialize(args={})
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count
    apartments.reduce(0) {|total, apt| total + apt.room_count}
  end

  def total_monthly_revenue
    apartments.reduce(0) {|total, apt| total + apt.monthly_rent}
  end

  def apartments_by_rent
    apartments.sort
  end

  def find_apartments_by_bedroom_count(number_of_bedrooms)
    apartments.find {|apt| apt.bedroom_count == number_of_bedrooms}
  end

  def total_sqft
    apartments.reduce(0) {|total, apt| total + apt.total_sqft}
  end
end
