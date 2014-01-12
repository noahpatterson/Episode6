class Automobile

  attr_reader :color, :make, :model, :year

  def self.num_wheels
    num_wheels = 4
  end

  def update(args={})
    @color = args.fetch(:color) if args[:color]
    @make = args.fetch(:make) if args[:make]
    @model = args.fetch(:model) if args[:model]
    @year = args.fetch(:year) if args[:year]
  end
end