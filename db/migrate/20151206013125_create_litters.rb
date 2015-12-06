class CreateLitters < ActiveRecord::Migration
  def change
    create_table :litters do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
