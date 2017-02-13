class AddLocationToCinemas < ActiveRecord::Migration[5.0]
  def change
    add_column :cinemas, :location, :text
  end
end
