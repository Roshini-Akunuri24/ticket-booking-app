require 'rails_helper'

RSpec.describe Location, type: :model do
  subject{
    described_class.new(name: "Anything")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    location = Location.new(name: nil)
    expect(location).to_not be_valid
  end


  it "should have many movies" do
    location = Location.reflect_on_association(:movie_tickets)
    expect(location.macro).to eq(:has_many)
  end

end
