require 'rails_helper'

RSpec.describe 'Api::V1::Tables', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/tables/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/api/v1/tables/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/api/v1/tables/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/api/v1/tables/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
