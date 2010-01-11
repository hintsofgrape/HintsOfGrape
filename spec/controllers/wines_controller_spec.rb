require 'spec_helper'

describe WinesController do

  #Delete these examples and add some real ones
  it "should use WinesController" do
    controller.should be_an_instance_of(WinesController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      wine = mock_model(Wine)
      Wine.stub!(:all).and_return(wine)
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      wine = mock_model(Wine)
      Wine.stub!(:find).and_return(wine)
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      wine = mock_model(Wine)
      Wine.stub!(:new).and_return(wine)
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      wine = mock_model(Wine)
      Wine.stub!(:find).and_return(wine)
      get 'edit'
      response.should be_success
    end
  end
end
