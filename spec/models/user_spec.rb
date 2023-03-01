require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(name: "Anything",
                        email: "anything@gmail.com",
                        password: "anything",
                        phone_number: 1234587896)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a phone_number" do
    subject.phone_number = nil
    expect(subject).to_not be_valid
  end
end
