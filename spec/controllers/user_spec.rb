describe UsersController do

  describe "GET show" do
    before(:each) do
      @user = User.create! :email => 'test@test.com', :password => '123abc'
    end
    
    it "should find the user by its id" do
      get :show, :id => @user.id
      assigns[:user].email.should == "test@test.com"
    end
  end
  
  describe "POST new" do 
    it "should register the new user" do
      post :new, :user => {:email => "test4@test.com", :password => '123abc'}
      assigns[:user].email.should == "test4@test.com"
    end
  end
end
