class CreateOpers < ActiveRecord::Migration
  def change
    create_table :opers do |t|
      t.references :document, index: true
      t.string :number_document
      t.string :name
      t.string :last_name
      t.references :online, index: true
      t.string :direccion
      t.string :email
      t.string :telephone
      t.string :type_formation
      t.date :date_home
      t.date :date_end
      t.references :group, index: true

      t.timestamps
    end
  end
end
