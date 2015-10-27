class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.column :owner, :string
      t.column :type, :string
      t.column :image, :string
      t.column :bedrooms, :integer

      t.timestamps
    end
  end
end
