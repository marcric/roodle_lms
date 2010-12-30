require 'spec_helper'

describe User do
  before(:each) do
    # in dev or production this role would be created by migration
    Role.create!(:title => "student")
    
    @user = User.create! :email => "test@test.com", :password => '123abc'
    @user2 = User.create "Test2"
  end

=begin
  # TODO: remove this
  describe "A Role" do
    it "should be associated with a user" do
      User.new.should respond_to(:role)
      pending "needs to be associated and validated with a default role"
    end
  end
=end

  context "A Role" do
    it "have a roles association" do
      User.new.should respond_to(:roles)
    end

    it "assigns default role of student when creating user" do
      @user.roles.first.title.should == "student"
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

end

