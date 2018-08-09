class CreatePremios < ActiveRecord::Migration[5.1]
  def change
    create_table :premios do |t|
      t.string :patrocinador
      t.string :detalle
      t.string :cantidad
      t.string :puntosRequeridos
      t.string :observaciones

      t.timestamps
    end
  end
end
