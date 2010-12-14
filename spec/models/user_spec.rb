require 'spec_helper'

describe User do
    context "when an user is created it has to have an e-mail address" do
      before(:each) do
        @user = User.create! :email => "test@test.com", :password => '123abc'
        @user2 = User.create "Test2"
      end 
      
      it "validates the user attributes" do
        @user.should be_valid
      end

      it "doesn't validates the user attributes" do
        @user2.should_not be_valid
      end
    end

    context "when an user is searched by its e-mail address" do 
      before(:each) do
        @user = User.create! :email => "test@test.com", :password => '123abc'
      end

      it "should find the user" do
        User.find_by_email("test@test.com").should be_true
      end
    end
end
