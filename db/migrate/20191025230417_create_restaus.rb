class CreateRestaus < ActiveRecord::Migration[5.1]
  def change
    create_table :restaus do |t|
      t.string :title
      t.string :description
      t.string :author
      t.integer :page_count
      t.date :published_at

      t.timestamps
    end
  end
end
