class Buyer < ActiveRecord::Base
  has_many :bikes
  has_one :shop

  def shops_without_favorite
    shops = Shop.all
    Bike.where(brand: self.favorite_brand).each { |bike|
    shops = shops.select { |shop| shop.id != bike.shop_id }}
    shops.collect { |shop| shop.name }
  end
end