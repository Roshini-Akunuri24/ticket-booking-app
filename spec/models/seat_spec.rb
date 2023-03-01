require 'rails_helper'

RSpec.describe Seat, type: :model do
  subject {
    described_class.new(number: 1,
                        booked: true,
                        price: 100.00,
                        movie_ticket_id: 1)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a number" do
    subject.number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.booked = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a start_date" do
    subject.price = nil
    expect(subject).to_not be_valid
  end


  it "belongs_to movie_tickets" do
    seat = described_class.reflect_on_association(:movie_ticket)
    expect(seat.macro).to eq :belongs_to
  end
  
end
