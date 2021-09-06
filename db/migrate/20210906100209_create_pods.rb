class CreatePods < ActiveRecord::Migration[6.0]
  def change
    create_table :pods do |t|
      t.string :name
      t.text :description
      t.time :start_time
      t.time :end_time
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
