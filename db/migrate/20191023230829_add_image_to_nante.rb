class AddImageToNante < ActiveRecord::Migration[5.1]
  def change
    add_column :nantes, :image, :string
  end
end
