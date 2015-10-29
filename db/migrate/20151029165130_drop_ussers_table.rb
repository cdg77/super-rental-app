class DropUssersTable < ActiveRecord::Migration
  def change
    drop_table :ussers
  end
end
