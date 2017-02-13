class AddOpenDayToCinema < ActiveRecord::Migration[5.0]
  def change
    add_column :cinemas, :open_day, :string
  end
end
