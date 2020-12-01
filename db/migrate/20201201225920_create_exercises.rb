class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :description
      t.string :image
      t.references :muscle_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
