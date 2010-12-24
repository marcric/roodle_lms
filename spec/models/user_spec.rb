require 'spec_helper'

describe User do
  before(:each) do
    @user = User.create! :email => "test@test.com", :password => '123abc'
    @user2 = User.create "Test2"
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
    context "As a #{role} in the Student, Teacher, Mentor and Patron roles, I " do

      [:user_name, :city, :country, :tz, :avatar].each do |attribute|
        it "should see #{attribute} from my colleagues: " do
          pending
        end
      end

      [:full_name, :email, :address].each do |attribute|
        it "should not see #{attribute} from my colleagues: " do
          pending
        end
      end

      context "As a logged user in the Admin role, I should see from other users: " do
        [:full_name, :email, :address].each do |attribute|
          it "should see #{attribute} " do
            pending
          end
        end
      end

    end
  end

end


