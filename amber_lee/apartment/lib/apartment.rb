class Apartment
  attr_accessor :number, :apartment_square_feet, :apartment_bedrooms, :apartment_bathrooms

  def initialize(number, apartment_square_feet, apartment_bedrooms, apartment_bathrooms)
    @number = number
    @apartment_square_feet = apartment_square_feet
    @apartment_bedrooms = apartment_bedrooms
    @apartment_bathrooms = apartment_bathrooms
  end
end
