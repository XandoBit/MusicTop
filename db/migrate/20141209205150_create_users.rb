class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :email
      t.string :pass

      t.timestamps 
    end
  end
end
