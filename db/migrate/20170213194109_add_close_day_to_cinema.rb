class AddCloseDayToCinema < ActiveRecord::Migration[5.0]
  def change
    add_column :cinemas, :close_day, :string
  end
end
