class CreateOnlines < ActiveRecord::Migration
  def change
    create_table :onlines do |t|
      t.string :number
      t.string :number_machines
      t.string :number_operator

      t.timestamps
    end
  end
end
