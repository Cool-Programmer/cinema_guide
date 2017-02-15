class RemoveFirstNameFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :first_name, :string
  end
end
