require 'spec_helper'

describe AdminController do

  def authorize
    mock_user = mock_model(User)
    User.stub!(:find).and_return(true)
  end

  #Delete these examples and add some real ones
  it "should use AdminController" do
    controller.should be_an_instance_of(AdminController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      authorize
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    it "should be successful" do
      authorize
      get 'logout'
      response.should be_redirect
    end
  end
end
