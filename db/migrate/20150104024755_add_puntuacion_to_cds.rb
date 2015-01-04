class AddPuntuacionToCds < ActiveRecord::Migration
  def change
    add_column :cds, :puntuacion, :Integer
  end
end
