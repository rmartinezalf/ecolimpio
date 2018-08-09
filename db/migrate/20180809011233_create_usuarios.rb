class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :alias
      t.string :telefono
      t.string :avatar
      t.string :localidad
      t.string :estado

      t.timestamps
    end
  end
end
