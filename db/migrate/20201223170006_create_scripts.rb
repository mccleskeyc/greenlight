class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.string :title
      t.string :writer
      t.date :date
      t.string :rec
      t.string :notes

      t.timestamps null: false
    end
  end
end
