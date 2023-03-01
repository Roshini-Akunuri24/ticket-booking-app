require 'rails_helper'

RSpec.describe Show, type: :model do
  subject {
    described_class.new(time: "12:00PM")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a time" do
    subject.time = nil
    expect(subject).to_not be_valid
  end

  it "should have movies" do
    t = Show.reflect_on_association(:movie_tickets)
    expect(t.macro).to eq(:has_many)
  end
end
