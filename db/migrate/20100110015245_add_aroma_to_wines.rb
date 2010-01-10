class AddAromaToWines < ActiveRecord::Migration
  def self.up
    add_column :wines, :aroma, :string
  end

  def self.down
    remove_column :wines, :aroma
  end
end
