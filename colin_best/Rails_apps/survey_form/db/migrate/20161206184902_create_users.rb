class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :dojo
      t.string :favorite_language
      t.text :comment

      t.timestamps
    end
  end
end
