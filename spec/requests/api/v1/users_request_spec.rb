require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  describe 'GET /index' do
    context "user login" do
      it 'returns http request 200' do
        get "/api/v1/users"
        expect(response.status).to eq 200
      end
    end
  end

  describe 'GET /show' do
    it 'returns http 200' do
    end
  end

  describe 'POST /create' do
    it 'returns http success' do      
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
    end
  end
end
