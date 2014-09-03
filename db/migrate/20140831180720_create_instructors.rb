class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.references :document, index: true
      t.string :number_documnet
      t.string :name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :telephone
      t.references :area, index: true
      t.references :userr, index: true
      t.references :online, index: true

      t.timestamps
    end
  end
end
