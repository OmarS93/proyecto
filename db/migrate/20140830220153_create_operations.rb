class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :name
      t.text :description
      t.string :machine
      t.string :time_stadar
      t.references :area, index: true

      t.timestamps
    end
    add_attachment :operations, :image
  end
end
