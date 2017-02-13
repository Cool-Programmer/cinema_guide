class AddOpenHourToCinema < ActiveRecord::Migration[5.0]
  def change
    add_column :cinemas, :open_hour, :string
  end
end
