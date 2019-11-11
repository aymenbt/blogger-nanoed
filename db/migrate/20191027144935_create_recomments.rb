class CreateRecomments < ActiveRecord::Migration[5.1]
  def change
    create_table :recomments do |t|
      t.string :name
      t.text :body
      t.references :restau, foreign_key: true

      t.timestamps
    end
  end
end
