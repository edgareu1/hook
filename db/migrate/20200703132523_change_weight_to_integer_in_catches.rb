class ChangeWeightToIntegerInCatches < ActiveRecord::Migration[6.0]
  def change
    change_column :catches, :weight, :integer
  end
end
