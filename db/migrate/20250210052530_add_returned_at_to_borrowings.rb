class AddReturnedAtToBorrowings < ActiveRecord::Migration[8.0]
  def change
    add_column :borrowings, :returned_at, :datetime
  end
end
