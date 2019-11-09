class AddPictureToUnicorns < ActiveRecord::Migration[6.0]
  def change
    add_column :unicorns, :picture, :string
  end
end
