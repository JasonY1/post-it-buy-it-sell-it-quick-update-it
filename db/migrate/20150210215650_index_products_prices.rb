class IndexProductsPrices < ActiveRecord::Migration
  def up
    execute "CREATE INDEX products_prices on products USING GIN(prices)"
  end

  def down
    execute "DROP INDEX products_prices"
  end
end
