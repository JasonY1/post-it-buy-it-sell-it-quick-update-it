class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :type
      t.string :strain
      t.decimal :thc
      t.string :image_url
      t.string :link
      t.integer :inventory
      t.string :slug
      t.boolean :show, default: true

      t.timestamps
    end
  end
end
