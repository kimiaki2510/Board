require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user1 = FactoryBot.build(:tom)
    @user2 = FactoryBot.build(:taro)
  end

  #user create
  context 'user create' do
    it "user1 create valid" do
      expect(@user1).to be_valid
    end
    it "user2 create valid" do
      expect(@user2).to be_valid
    end
  end
  #name
  context 'name' do
    it "name empty invalid" do
      @user1.name = ""
      expect(@user1).to be_invalid
    end
    it "name length 51 invalid" do
      @user2.name = "tar"*17
      expect(@user2).to be_invalid
    end
  end
  #email
  context 'email' do
    it "email empty invalid" do
      @user1.email = ""
      expect(@user1).to be_invalid
    end
    it "email length 50 valid" do
      just_email = "tarou"*10
      @user2.email = "#{just_email}@taro.com"
    end
    it "email length 51 invalid" do
      over_email = "tar"*17
      @user2.email = "#{over_email}@taro.com"
    end
  end
  #password
  context 'password' do
    it "password_digest empty invalid" do
      @user1.password_digest = ""
      expect(@user1).to be_invalid
    end
    it "both password password_digest empty invalid" do
      @user1.password = ""
      @user1.password_digest = ""
      expect(@user1).to be_invalid
    end
  end
end
