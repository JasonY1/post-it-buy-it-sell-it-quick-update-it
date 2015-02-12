class IndexProductsDetails < ActiveRecord::Migration
  def up
    execute "CREATE INDEX products_details on products USING GIN(prices)"
  end

  def down
    execute "DROP INDEX products_details"
  end
end
