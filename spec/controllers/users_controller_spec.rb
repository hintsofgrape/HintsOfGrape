require 'spec_helper'

describe UsersController do
  def mock_user(stubs={})
    @mock_user ||= mock_model(User, stubs)
  end

  describe "GET index" do
    it "assigns all users as @users" do
      User.stub!(:find).and_return([mock_user])
      get :index
      assigns[:users].should == [mock_user]
    end
  end

  describe "GET show" do
    it "assigns the requested user as @user" do
      User.stub!(:find).and_return(mock_user)
      get :show
      #assigns[:user].should equal(mock_user)
    end
  end

  describe "GET new" do
    it "assigns a new user as @user" do
      User.stub!(:new).and_return(mock_user)
      get :new
      #assigns[:user].should equal(mock_user)
    end
  end

  describe "GET edit" do
    it "assigns the requested user as @user" do
      User.stub!(:find).and_return(mock_user)
      get :edit
      assigns[:user].should equal(mock_user)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created user as @user" do
        User.stub!(:new).and_return(mock_user)
        post :create
      end

      it "redirects to the created user" do
        User.stub!(:new).and_return(mock_user)
        post :create
        response.should be_redirect
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user as @user" do
        User.stub!(:new).and_return(mock_user)
        post :create
      end
    end
  end
end
