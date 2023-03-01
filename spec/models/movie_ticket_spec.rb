require 'rails_helper'

RSpec.describe MovieTicket, type: :model do
  subject {
    described_class.new(movie_name: "Anything",
                        image: "/path/to/something.jpg",
                        date: DateTime.now,
                        location_id: 1,
                        show_id: 1,
                        theatre_id: 1)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.movie_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a image" do
    subject.image = nil
    expect(subject).to_not be_valid
  end

  it "belongs_to location " do
    movie_ticket = described_class.reflect_on_association(:location)
    expect(movie_ticket.macro).to eq :belongs_to
  end

  it "belongs_to show" do
    movie_ticket = described_class.reflect_on_association(:show)
    expect(movie_ticket.macro).to eq :belongs_to
  end

  it "belongs_to theatre" do
    movie_ticket = described_class.reflect_on_association(:theatre)
    expect(movie_ticket.macro).to eq :belongs_to
  end
end
