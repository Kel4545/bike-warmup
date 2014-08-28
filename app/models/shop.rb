class Shop <ActiveRecord::Base
  has_many :bikes
  has_many :buyers

  def buyers
    self.bikes.collect { |bike| Buyer.find(bike.buyer_id).first_name }
  end

  def bike_names
    self.bikes.collect { |bike| bike.name }
  end
end