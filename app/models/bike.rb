class Bike < ActiveRecord::Base
  belongs_to :shop
  belongs_to :buyer

  def favorited_by
    brand = self.brand
    fav = Buyer.find_by(favorite_brand: brand)
    "#{fav.first_name} #{fav.last_name}"
  end
end