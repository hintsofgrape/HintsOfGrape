class AddTestData < ActiveRecord::Migration
  def self.up
    Wine.delete_all
    Wine.create(:name => 'Sparkling Wine',
      :description =>
      %{<p>
        Apple, pear, yeast
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Sauvignon Blanc',
      :description =>
      %{<p>
        Herbaceous, grassy, hay, citrus, grape-fruity
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Chardonnay',
      :description =>
      %{<p>
        Pear, apple, oak, buttery,creamy
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Viognier',
      :description =>
      %{<p>
        Floral, peach, apricot, pear, fruity
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Pinot Grigio',
      :description =>
      %{<p>
        Crisp, pear, peach, apricot
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Pinot Blanc',
      :description =>
      %{<p>
        Pear, apple, floral
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Chenin Blanc',
      :description =>
      %{<p>
        Peaches, fruity
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Gewurztraminer',
      :description =>
      %{<p>
        Lychee nut, spices, rose petals
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Riesling',
      :description =>
      %{<p>
        Apple, lemon, floral, apricot, fruity
        </p>},
      :image_url => '/images/white_wine.jpg')

    Wine.create(:name => 'Pinot Noir',
      :description =>
      %{<p>
        Strawberry, berries, cherry
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Merlot',
      :description =>
      %{<p>
        Blackberry, plum, current, chocolate, vanilla
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Zinfandel',
      :description =>
      %{<p>
        Berries, jammy, cherry, earthy
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Cabernet Sauvignon',
      :description =>
      %{<p>
        Blueberries, black current, cassis, raspberries, oaky
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Syrah',
      :description =>
      %{<p>
        peppery, spice, blackberry, cinnamon
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Petit Syrah',
      :description =>
      %{<p>
        Blackberry, pepper, jammy
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Sangiovese',
      :description =>
      %{<p>
        Cherry, fruity, spice
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Sabernet Franc',
      :description =>
      %{<p>
        Raspberry, casis, herbacious
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => 'Barbera',
      :description =>
      %{<p>
        Berries
        </p>},
      :image_url => '/images/red_wine.jpg')

    Wine.create(:name => '',
      :description =>
      %{<p>
        </p>},
      :image_url => '/images/red_wine.jpg')
  end

  def self.down
    Wine.delete_all
  end
end
