class DropReviewTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :reviews
  end
end
