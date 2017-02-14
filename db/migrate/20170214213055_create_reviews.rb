class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :cinema_id
      t.string :first_name
      t.text :message

      t.timestamps
    end
  end
end
