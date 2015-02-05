class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  
  # Need a helper per each price calc
  def total_price
    product.ppgram * quantity
  end
end
