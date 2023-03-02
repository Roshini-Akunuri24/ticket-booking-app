require 'rails_helper'

RSpec.describe Seat, type: :model do
  subject {
    described_class.new(number: 10,
                        booked: true,
                        price: 150.0)
  }

  it "is not valid without a number" do
    subject.number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without booking" do
    subject.booked = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end


  it "belongs_to movie_tickets" do
    seat = described_class.reflect_on_association(:movie_ticket)
    expect(seat.macro).to eq :belongs_to
  end
  
end
