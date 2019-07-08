class AddRockGlacierTypeToMap < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :rock_glacier_type, :integer
  end
end
