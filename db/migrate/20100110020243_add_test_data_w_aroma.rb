class AddTestDataWAroma < ActiveRecord::Migration
  def self.up
    Wine.delete_all
    Wine.create(:name => 'Sparkling Wine',
      :aroma => "Fruity",
      :description =>
      %{<p>
        Apple, pear, yeast
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Sauvignon Blanc',
      :aroma => "Fruity",
      :description =>
      %{<p>
        Herbaceous, grassy, hay, citrus, grape-fruity
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Chardonnay',
      :aroma => "Fruity",
      :description =>
      %{<p>
        Pear, apple, oak, buttery,creamy
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Viognier',
      :aroma => "Fruity",
      :description =>
      %{<p>
        Floral, peach, apricot, pear, fruity
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Pinot Grigio',
      :aroma => "Fruity",
      :description =>
      %{<p>
        Crisp, pear, peach, apricot
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Pinot Blanc',
      :aroma => "Fruity",
      :description =>
      %{<p>
        Pear, apple, floral
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Chenin Blanc',
      :aroma => "Fruity",
      :description =>
      %{<p>
        Peaches, fruity
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Gewurztraminer',
      :aroma => "Fruity",
      :description =>
      %{<p>
        Lychee nut, spices, rose petals
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Riesling',
      :aroma => "Fruity",
      :description =>
      %{<p>
        Apple, lemon, floral, apricot, fruity
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Pinot Noir',
      :aroma => "Earthy",
      :description =>
      %{<p>
        Strawberry, berries, cherry
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Merlot',
      :aroma => "Earthy",
      :description =>
      %{<p>
        Blackberry, plum, current, chocolate, vanilla
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Zinfandel',
      :aroma => "Earthy",
      :description =>
      %{<p>
        Berries, jammy, cherry, earthy
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Cabernet Sauvignon',
      :aroma => "Earthy",
      :description =>
      %{<p>
        Blueberries, black current, cassis, raspberries, oaky
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Syrah',
      :aroma => "Earthy",
      :description =>
      %{<p>
        peppery, spice, blackberry, cinnamon
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Petit Syrah',
      :aroma => "Earthy",
      :description =>
      %{<p>
        Blackberry, pepper, jammy
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Sangiovese',
      :aroma => "Earthy",
      :description =>
      %{<p>
        Cherry, fruity, spice
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Sabernet Franc',
      :aroma => "Earthy",
      :description =>
      %{<p>
        Raspberry, casis, herbacious
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Barbera',
      :aroma => "Earthy",
      :description =>
      %{<p>
        Berries
        </p>},
      :image_url => '/images/red_wine.jpg')
  end

  def self.down
    Wine.delete_all
  end
end
