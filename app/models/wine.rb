class Wine < ActiveRecord::Base
  validates_presence_of :name, :description, :image_url, :aroma
  validates_format_of :image_url,
                      :with => %r{\.(gif|jpg|png)$}i,
                      :message => 'must be a URL for GIF, JPG ' +
                                   'or PNG image.'

  def self.find_all_wines
    find(:all, :order => "name")
  end

  def self.find_wine_by_term term
    wine_name = find(:first, :conditions => {:name => term})
    if wine_name
      aroma = wine_name.aroma
    else
      aroma = find_aroma_by_term term
    end
    wines = find(:all, :conditions => {:aroma => aroma})
  end

  def self.find_aroma_by_term term 
    AROMAS.map do |key, value|
      return value if key.eql? term.downcase
    end
    return nil
  end

  AROMAS = [
    ["fruity", "fru"],
      ["citrus", "fru"],
      ["berry", "fru"],
      ["fruit", "fru"],
      ["grapefruit", "fru"],
      ["lemon", "fru"],
      ["blackberry", "fru"],
      ["raspberry", "fru"],
      ["strawberry", "fru"],
      ["currant", "fru"],
      ["cherry", "fru"],
      ["apricot", "fru"],
      ["peach", "fru"],
      ["apple", "fru"],
      ["pineapple", "fru"],
      ["melon", "fru"],
      ["banana", "fru"],
      ["raisin", "fru"],
      ["prune", "fru"],
      ["fig", "fru"],
    ["vegatitive", "veg"],
      ["herbaceous", "veg"],
      ["grass", "veg"],
      ["bell pepper", "veg"],
      ["eucalyptus", "veg"],
      ["mint", "veg"],
      ["green beans", "veg"],
      ["apsaragus", "veg"],
      ["olive", "veg"],
      ["artichoke", "veg"],
      ["hay", "veg"],
      ["tea", "veg"],
      ["tobacco", "veg"],
    ["nutty", "nut"],
      ["walnut", "nut"],
      ["hazelnut", "nut"],
      ["almond", "nut"],
    ["caramel", "car"],
      ["honey", "car"],
      ["butterscotch", "car"],
      ["butter", "car"],
      ["soy sauce", "car"],
      ["chocolate", "car"],
      ["molasses", "car"],
    ["woody", "woo"],
      ["smokey", "woo"],
      ["burnt toast", "woo"],
      ["coffee", "woo"],
      ["medicinal", "woo"],
      ["phenolic", "woo"],
      ["bacon", "woo"],
      ["oak", "woo"],
      ["cedar", "woo"],
      ["vanilla", "woo"],
    ["earthy", "ear"],
      ["moldy", "ear"],
      ["mushroom", "ear"],
      ["dusty", "ear"],
    ["chemical", "che"],
      ["pungent", "che"],
      ["sulfur", "che"],
      ["petroleum", "che"],
      ["sulfur dioxide", "che"],
      ["ethanol", "che"],
      ["acetic acid", "che"],
      ["wet dog", "che"],
      ["burnt match", "che"],
      ["cabbage", "che"],
      ["skunk", "che"],
      ["garlic", "che"],
      ["natural gas", "che"],
      ["hydrogen sulfide", "che"],
      ["rubbery", "che"],
      ["diesel", "che"],
      ["kerosene", "che"],
      ["plastic", "che"],
      ["tar", "che"],
    ["pungent", "pun"],
      ["cool", "pun"],
      ["hot", "pun"],
      ["alcohol", "pun"],
      ["menthol", "pun"],
    ["oxidized", "oxi"],
      ["sherry", "oxi"],
    ["microbiological", "mic"],
      ["lactic", "mic"],
      ["yeast", "mic"],
      ["leesy", "mic"],
      ["sauerkraut", "mic"],
      ["sweaty", "mic"],
      ["yoghurt", "mic"],
      ["horsey", "mic"],
      ["mousey", "mic"],
    ["floral", "flo"],
      ["geranium", "flo"],
      ["violet", "flo"],
      ["rose", "flo"],
      ["orange blossom", "flo"],
    ["spicy", "spi"],
      ["cloves", "spi"],
      ["black pepper", "spi"],
      ["licorice", "spi"]
    ]
end
