class CreateCapacitacions < ActiveRecord::Migration[5.1]
  def change
    create_table :capacitacions do |t|
      t.string :idUsuario
      t.string :idVideo
      t.string :fechaHora
      t.string :completo
      t.string :claseVideo

      t.timestamps
    end
  end
end
