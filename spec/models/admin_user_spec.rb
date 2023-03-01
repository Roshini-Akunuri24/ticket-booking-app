require 'rails_helper'

RSpec.describe AdminUser, type: :model do
    subject{
      described_class.new(name: "Anything",
      email: "anything@gmail.com",
      password: "AnyThing")
    }
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end

  it "is not valid without a name" do
    admin_user = AdminUser.new(name: nil)
    expect(admin_user).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email =  nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    admin_user = AdminUser.new(password: nil)
    expect(admin_user).to_not be_valid
  end  
end 
