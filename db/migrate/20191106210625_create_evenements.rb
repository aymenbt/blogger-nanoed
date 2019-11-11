class CreateEvenements < ActiveRecord::Migration[5.1]
  def change
    create_table :evenements do |t|
      t.string :name
      t.text :description
      t.datetime :start_time

      t.timestamps
    end
  end
end
