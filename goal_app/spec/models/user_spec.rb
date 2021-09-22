require 'rails_helper'

RSpec.describe User, type: :model do
  
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:session_token) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:password).allow_nil }
  it { should validate_length_of(:password).is_at_least(6) }

  describe "uniqueness" do
    before :each do
      create(:user)
      
    end

    it { should validate_uniqueness_of(:username) }
    it { should validate_uniqueness_of(:session_token) }
  end

  #associations



  #class scope methods

  describe "::find_by_credentials" do
    # it "should accept a username and password as arguments" do
    #   expect(self.class).to receive(:find_by_credentials).with("username", "password")
    # end
    before :each do
      create(:user)
    end

    context "if a user exists" do
      it "should return user" do
        
      end
    end

    context "if a user does not exists" do
      it "should return nil"
    end
  end




end
