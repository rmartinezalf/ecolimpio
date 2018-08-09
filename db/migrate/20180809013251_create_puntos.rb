class CreatePuntos < ActiveRecord::Migration[5.1]
  def change
    create_table :puntos do |t|
      t.string :idUsuario
      t.integer :ganaRedime
      t.datetime :fecha
      t.string :accion
      t.string :puntos
      t.string :idPremio

      t.timestamps
    end
  end
end
