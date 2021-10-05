class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :sale_type
      t.string :sold
      t.string :property_type
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :price
      t.string :beds
      t.string :baths
      t.string :location
      t.string :square_feet

      t.timestamps
    end
  end
end
