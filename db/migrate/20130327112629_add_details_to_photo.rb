class AddDetailsToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :iso, :string
    add_column :photos, :aperture, :string
    add_column :photos, :speed, :string
  end
end
