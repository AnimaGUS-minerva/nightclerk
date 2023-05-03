class CreateAppliances < ActiveRecord::Migration[7.0]
  def change
    create_table :appliances do |t|
      t.integer :owner_id
      t.text :name
      t.json :addresses
      t.text :requesting_address

      t.timestamps
    end
  end
end
