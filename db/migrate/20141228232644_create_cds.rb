class CreateCds < ActiveRecord::Migration
  def change
    create_table :cds do |t|
      t.string :grupo
      t.string :titulo
      t.text :descripcion
      t.text :enlace
      t.date :fecha
      t.references :user, index: true

      t.timestamps
    end
  end
end
