require 'rails_helper'

RSpec.describe Show, type: :model do
  it "should have show timings" do
    t = Show.reflect_on_association(:movie_tickets)
    expect(t.macro).to eq(:has_many)
  end
end
