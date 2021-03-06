require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email: "test@test.com", password: "askjdhkashda", password_confirmation: "askjdhkashda", first_name: "hij", last_name: "daar")
    end
    it "can be created" do
      expect(@user).to be_valid
    end
    it "cannot be created without first and lastname" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).not_to be_valid
    end
  end
end
