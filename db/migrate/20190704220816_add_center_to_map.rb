class AddCenterToMap < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :center, :float, array: true, default: []
  end
end
