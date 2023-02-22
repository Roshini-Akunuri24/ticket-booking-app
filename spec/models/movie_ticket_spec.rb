require 'rails_helper'

RSpec.describe MovieTicket, type: :model do
  it "belongs_to location " do
    t = MovieTicket.reflect_on_association(:location)
    expect(t.macro).to eq :belongs_to
  end

  it "belongs_to show" do
    t = described_class.reflect_on_association(:show)
    expect(t.macro).to eq :belongs_to
  end

  it "belongs_to theatre" do
    t = described_class.reflect_on_association(:theatre)
    expect(t.macro).to eq :belongs_to
  end
end
