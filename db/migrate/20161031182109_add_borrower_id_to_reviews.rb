class AddBorrowerIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :borrower_id, :integer
  end
end
