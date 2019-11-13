class AddImageToPartenaire < ActiveRecord::Migration[5.1]
  def change
    add_column :partenaires, :image, :string
  end
end
