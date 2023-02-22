require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  subject {
    FactoryBot.create(:admin_user)
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  context "creating a new admin" do   

    it "creates new admin with dummy data" do 
        dummy = AdminUser.create(name: "Admin1")
        expect(dummy).to be_valid
    end 
    
    it "using factorybot" do 
        expect(subject).to be_valid
    end
    
end 

# context "Admin not to be valid" do 
    
#     it " should have admin name" do 
#         subject.name = nil
#         subject.save
#         expect(subject).to_not be_valid
#     end
#   end 
end
