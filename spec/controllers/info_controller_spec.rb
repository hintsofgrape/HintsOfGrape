require 'spec_helper'

describe InfoController do

  #Delete these examples and add some real ones
  it "should use InfoController" do
    controller.should be_an_instance_of(InfoController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'search'" do
    it "should be successful" do
      wine = mock_model(Wine)
      Wine.stub!(:find_wine_by_term).and_return(wine)
      get 'search'
      response.should be_redirect
    end
  end
end
