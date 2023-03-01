require 'rails_helper'

RSpec.describe ShowsController, type: :controller do
  subject {FactoryBot.build(:time)}
  context "GET index" do

      it "returns a successful response" do
        get :index
        expect(response).to be_successful
        expect(response.status).to eq(200) 
      end
      
      it "assigns @shows" do
        get :index
        expect(assigns(:shows)).to eq(Show.all)
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

      it "assigns @show" do
          get :new
          expect(assigns(:show)).to be_a_new(Show)
      end

      it "renders the new template" do
          get :new
          expect(response).to render_template("new")
          expect(response.body).to eq ""
      end

  end 

  context 'GET show' do
     it 'should show the show with its details' do
        show1 = FactoryBot.create(:show)
        get :show, params: { id: show1.id }
        expect(response).to render_template :show  
    end
  end
end

