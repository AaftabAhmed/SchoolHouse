class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :zipcode
      t.string :street
      t.string :house_number
      t.bigint  :addressable_id
      t.string  :addressable_type

      t.timestamps
    end
  end
end
