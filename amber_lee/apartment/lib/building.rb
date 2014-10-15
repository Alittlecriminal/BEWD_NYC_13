class Building
  attr_accessor :building_name, :building_address, :apartments

  def initialize(building_name, building_address)
    @building_name = building_name
    @building_address = building_address
    @apartments = []
  end

  def view_apartments
    apartments.each do |apartment|
      puts "Building: #{building_name}"
      puts "Number: #{building_address}"
      puts "#{apartments}"
    end
  end
   
end
