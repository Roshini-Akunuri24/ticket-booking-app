require 'rails_helper'

RSpec.describe LocationsController, type: :controller do
  subject {FactoryBot.build(:name)}
  context "GET index" do

      it "returns a successful response" do
        get :index
        expect(response).to be_successful
        expect(response.status).to eq(200) 
      end
      
      it "assigns @locations" do
        get :index
        expect(assigns(:locations)).to eq(Location.all)
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

      it "assigns @location" do
          get :new
          expect(assigns(:location)).to be_a_new(Location)
      end

      it "renders the new template" do
          get :new
          expect(response).to render_template("new")
          expect(response.body).to eq ""
      end

  end  

  context 'GET show' do
     it 'should show the location with its details' do
        location1 = FactoryBot.create(:location)
        get :show, params: { id: location1.id }
        expect(response).to render_template :show  
    end
  end

end
