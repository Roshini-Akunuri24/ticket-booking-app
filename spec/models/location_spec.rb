require 'rails_helper'

RSpec.describe Location, type: :model do
  it "should have location name" do
    t = Location.reflect_on_association(:movie_tickets)
    expect(t.macro).to eq(:has_many)
  end
end
