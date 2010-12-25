require 'spec_helper'

describe User do
  before(:each) do
    @user = User.create! :email => "test@test.com", :password => '123abc'
    @user2 = User.create "Test2"
  end

  describe "A Role" do
    it "should be associated with a user" do
      User.new.should respond_to(:role)
      pending "needs to be associated and validated with a default role"
    end
  end

  context "when an user is created it has to have an e-mail address" do

    it "validates the user attributes" do
      @user.should be_valid
    end

    it "should validate the user attributes" do
      @user2.should_not be_valid
    end
  end

  context "when an user is searched by its e-mail address" do 

    it "should find the user" do
      User.find_by_email("test@test.com").should be_true
    end
  end

  [:student, :teacher, :mentor, :patron].each do |role|
    context "In the #{role} roles, I " do

      [:user_name, :city, :country, :tz, :avatar].each do |attribute|
        it "should see #{attribute} from my colleagues: " do
          pending "Write failing test!"
        end
      end

      [:full_name, :email, :address].each do |attribute|
        it "should not see #{attribute} from my colleagues: " do
          pending "Write failing test!"
        end
      end

      context "In the Admin role, I " do
        [:full_name, :email, :address].each do |attribute|
          it "should see #{attribute} " do
            pending "Write failing test!"
          end
        end
      end

    end
  end


end


