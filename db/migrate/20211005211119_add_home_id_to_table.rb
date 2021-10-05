class AddHomeIdToTable < ActiveRecord::Migration[6.1]
  def change
    add_index :homes, :address
  end
end
