class AddImageToWine < ActiveRecord::Migration
  def self.up
    add_column :wines, :image_url, :string
  end

  def self.down
    remove_column :wines, :image_url
  end
end
