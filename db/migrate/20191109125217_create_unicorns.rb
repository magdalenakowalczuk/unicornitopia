class CreateUnicorns < ActiveRecord::Migration[6.0]
  def change
    create_table :unicorns do |t|
      t.string :name
      t.integer :year
      t.string :source
      t.boolean :magical

      t.timestamps
    end
  end
end
