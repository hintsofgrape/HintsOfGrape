require 'spec_helper'

describe Wine do
  before(:each) do
    @valid_attributes = {
      :name => "wine_name",
      :description => "Wine description.",
      :image_url => "wine.jpg",
      :aroma => "aroma"
    }
  end

  it "should create a new instance given valid attributes" do
    Wine.create!(@valid_attributes)
  end
end
