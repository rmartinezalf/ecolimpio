class CreatePlanPuntos < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_puntos do |t|
      t.string :nivel
      t.string :detalle

      t.timestamps
    end
  end
end
