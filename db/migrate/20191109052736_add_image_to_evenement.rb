class AddImageToEvenement < ActiveRecord::Migration[5.1]
  def change
    add_column :evenements, :image, :string
  end
end
