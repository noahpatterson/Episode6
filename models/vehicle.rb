class Vehicle

  attr_reader :color, :make, :model, :year, :name
  
  @@all_vehicles = []

  def initialize(name, args={})
    @color = args.fetch(:color) if args[:color]
    @make = args.fetch(:make) if args[:make]
    @model = args.fetch(:model) if args[:model]
    @year = args.fetch(:year) if args[:year]
    @name = name
    @@all_vehicles << { name => args }
  end

  # def self.all_vehicles
  #   @@all_vehicles
  # end

  def self.num_wheels
    num_wheels = 4
  end

  def update_all_vehicles(name)
    found = @@all_vehicles.index {|vehicle| vehicle.has_key?(name) }
    @@all_vehicles.delete_at(found)
    @@all_vehicles << { name => {color: @color, make: @make, model: @model, year: @year}}
  end

  def all_vehicles
    @@all_vehicles
  end

  def update(name, args={})
    @color = args.fetch(:color) if args[:color]
    @make = args.fetch(:make) if args[:make]
    @model = args.fetch(:model) if args[:model]
    @year = args.fetch(:year) if args[:year]
    update_all_vehicles(name)
  end
end