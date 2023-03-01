require 'rails_helper'

RSpec.describe TheatresController, type: :controller do
  subject {FactoryBot.build(:name)}
    context "GET index" do
      it "returns a successful response" do
        get :index
        expect(response).to be_successful
        expect(response.status).to eq(200) 
      end
      
      it "assigns @theatres" do
        get :index
        expect(assigns(:theatres)).to eq(Theatre.all)
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

      it "assigns @theatre" do
          get :new
          expect(assigns(:theatre)).to be_a_new(Theatre)
      end

      it "renders the new template" do
          get :new
          expect(response).to render_template("new")
          expect(response.body).to eq ""
      end
  end 

  context 'GET show' do
     it 'should show the theatre with its details' do
      theatre1 = FactoryBot.create(:theatre)
        get :show, params: { id: theatre1.id }
        expect(response).to render_template :show  
    end
  end
end
