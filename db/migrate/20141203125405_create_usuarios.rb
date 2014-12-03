class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellidos
      t.string :contraseña
      t.string :ciudad
      t.string :gusto
      t.string :edad
      t.string :correo
     

      t.timestamps
    end
  end
end
