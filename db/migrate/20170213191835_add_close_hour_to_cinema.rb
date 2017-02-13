class AddCloseHourToCinema < ActiveRecord::Migration[5.0]
  def change
    add_column :cinemas, :close_hour, :string
  end
end
