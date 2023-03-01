require 'rails_helper'

RSpec.describe Theatre, type: :model do
  subject{
    described_class.new(name: "Anything")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.name = nil
    expect(subject).to_not be_valid
  end


  it "should have many movies" do
    theatre = Theatre.reflect_on_association(:movie_tickets)
    expect(theatre.macro).to eq(:has_many)
  end
end
