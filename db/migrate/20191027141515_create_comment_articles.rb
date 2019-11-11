class CreateCommentArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_articles do |t|
      t.string :name
      t.text :body
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
