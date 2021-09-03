class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age
      t.integer :gender
      t.text :introduction
      t.string :qualification
      t.text :grades, default:[].to_yaml

      t.timestamps
    end
  end
end
