class AddTelephoneToCinema < ActiveRecord::Migration[5.0]
  def change
    add_column :cinemas, :telephone, :string
  end
end
