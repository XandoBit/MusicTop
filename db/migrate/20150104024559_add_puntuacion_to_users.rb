class AddPuntuacionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :puntuacion, :Integer
  end
end
