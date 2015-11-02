class CreateChangeColumnTypeToKind < ActiveRecord::Migration
  def change
    rename_column :rentals, :type, :kind
  end
end
