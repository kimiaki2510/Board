require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  describe 'GET /index' do
    context "user all" do
      it 'returns http request 200' do
        FactoryBot.create(:jiro)

        get '/api/v1/users'
        json = JSON.parse(response.body)

        # リクエスト成功を表す200が返ってきたか確認する。
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'GET /show' do
    it 'user' do
      user = create(:jiro, name: 'jiro')

      get "/api/v1/users/#{user.id}"
      json = JSON.parse(response.body)

      # リクエスト成功を表す200が返ってきたか確認する。
      expect(response.status).to eq(200)

      # 要求した特定のポストのみ取得した事を確認する
      expect(json['data']['name']).to eq(user.name)
    end
  end

  describe 'POST /create' do
    it 'returns http success' do
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      user = create(:jiro)

      #データが削除されている事を確認
      expect { delete "/api/v1/users/#{user.id}" }.to change(User, :count).by(-1)

      # リクエスト成功を表す200が返ってきたか確認する。
      expect(response.status).to eq(200)
    end
  end
end
