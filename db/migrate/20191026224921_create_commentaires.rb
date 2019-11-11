class CreateCommentaires < ActiveRecord::Migration[5.1]
  def change
    create_table :commentaires do |t|
      t.string :name
      t.text :body
      t.references :nante, foreign_key: true
      t.references :article, foreign_key: true
      t.references :restau, foreign_key: true

      t.timestamps
    end
  end
end
