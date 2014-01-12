require_relative 'spec_helper'

describe Vehicle do
  it "should return the number of wheels" do
    expect(Vehicle.num_wheels).to eq(4)
  end
end
