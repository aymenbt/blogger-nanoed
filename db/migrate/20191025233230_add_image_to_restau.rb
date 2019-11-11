class AddImageToRestau < ActiveRecord::Migration[5.1]
  def change
    add_column :restaus, :image, :string
  end
end
