class AddColumnToHomes < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :url, :string
  end
end
