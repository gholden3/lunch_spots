require 'rails_helper'

describe LunchSpot do
  it "only allows ratings between zero and ten" do
    bad_spot = LunchSpot.new(name: "name", description: "desc", rating: 11)
    expect(bad_spot).to_not be_valid
    expect(bad_spot2.errors[:rating]).to include("must be between zero and ten")

    bad_spot2 = LunchSpot.new(name: "name", description: "desc", rating: -1)
    expect(bad_spot2).to_not be_valid

    good_spot = LunchSpot.new(name: "name", description: "desc", rating: 0)
    expect(good_spot).to be_valid
  end
end
