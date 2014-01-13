require_relative 'spec_helper'

describe Vehicle do

  it "should add to @all_vehicles" do
    car = Automobile.new('new', color: 'purple', make: 'Toyota', model: 'Prius', year: 2008) 
    index = car.all_vehicles.index {|vehicle| vehicle.has_key?('new') }
    expect(car.all_vehicles[index]).to eq({'new' => {:color => 'purple', :make => 'Toyota', :model => 'Prius', :year => 2008}})
  end


  describe "#update" do
    it "should update @@all_vehicles" do
      car = Automobile.new('new2', color: 'purple', make: 'Toyota', model: 'Prius', year: 2008) 
      car.update('new2', year: 2009)
      index = car.all_vehicles.index {|vehicle| vehicle.has_key?('new2') }
      expect(car.all_vehicles[index]['new2'][:year]).to eq(2009)
    end
  end

  it "should return the number of wheels" do
    expect(Vehicle.num_wheels).to eq(4)
  end

  it "should keep track of the vehicles created" do
    vehicle = Vehicle.new('test', color: 'yellow', make: 'Toyota', model: 'Prius', year: 2008 )
    Automobile.new('john', color: 'yellow', make: 'Toyota', model: 'Prius', year: 2008)
    Motorcycle.new('ben', color: 'red', make: 'honda', model: 'fast', year: 2014)
    print vehicle.all_vehicles
    expect(vehicle.all_vehicles.length).to eq(2)
  end
end
