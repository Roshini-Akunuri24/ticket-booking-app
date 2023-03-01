require 'rails_helper'

RSpec.describe AdminUsersController, type: :controller do
    subject {FactoryBot.build(:name, :email, :password)}

  context "GET index" do
      it "returns a successful response" do
        get :index
        expect(response).to be_successful
        expect(response.status).to eq(200) 
      end
      
      it "assigns @admin_users" do
        get :index
        expect(assigns(:admin_users)).to eq(AdminUser.all)
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end

  end 

  context "GET new" do 
      
      it "returns a successful response" do
          get :new
          expect(response).to be_successful
          expect(response.status).to eq(200) 
      end

      it "assigns @admin_user" do
          get :new
          expect(assigns(:admin_user)).to be_a_new(AdminUser)
      end

      it "renders the new template" do
          get :new
          expect(response).to render_template("new")
          expect(response.body).to eq ""
      end

  end 

  context 'GET show' do
     it 'should show the admin_user with its details' do
        admin_user1 = FactoryBot.create(:admin_user)
        get :show, params: { id: admin_user1.id }
        expect(response).to render_template :show
    end
  end
end
