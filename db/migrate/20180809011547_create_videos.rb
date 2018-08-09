class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :nombreVideo
      t.string :nivel
      t.string :comentario

      t.timestamps
    end
  end
end
