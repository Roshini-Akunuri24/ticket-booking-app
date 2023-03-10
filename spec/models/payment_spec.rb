require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject{
    described_class.new(user_id: 1,
      movie_ticket_id: 1,
      total_amount: 99.9,
      seat_id: 1)
  }


it "is not valid without a amount" do
  subject.total_amount = nil
  expect(subject).to_not be_valid
end

it "belongs_to user " do
  movie_ticket = described_class.reflect_on_association(:user)
  expect(movie_ticket.macro).to eq :belongs_to
end

it "belongs_to movie_ticket" do
  movie_ticket = described_class.reflect_on_association(:movie_ticket)
  expect(movie_ticket.macro).to eq :belongs_to
end

it "belongs_to seat" do
  movie_ticket = described_class.reflect_on_association(:seat)
  expect(movie_ticket.macro).to eq :belongs_to
end
end
