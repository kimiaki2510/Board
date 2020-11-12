require 'rails_helper'

RSpec.describe 'Api::V1::Cards', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/cards/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/api/v1/cards/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/api/v1/cards/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
