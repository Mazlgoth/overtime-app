require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.create(:post)
  end

  describe "creation" do
  	it "can be created" do
  		expect(@user).to be_valid
  	end
  end

  describe "validations" do    
    it "cannot be created withough first_name" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created withough last_name" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created withough phone" do
      @user.phone = nil
      expect(@user).to_not be_valid
    end

    it "requires the phone atter to only contain integers" do
      @user.phone = 'mygreatestr'
      expect(@user).to_not be_valid
    end

    it "requires the phone attr to only have 10 chars" do
      @user.phone = '12345678901'
      expect(@user).to_not be_valid
    end
  end

  describe "custom name methods" do
    it 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq("SNOW, JOHN")
    end
  end
end
