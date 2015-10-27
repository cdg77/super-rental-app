class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.column :name, :string
      t.column :country, :string
      t.column :attractions, :string

      t.timestamps
    end
  end
end
