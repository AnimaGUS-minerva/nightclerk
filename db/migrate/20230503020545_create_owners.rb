class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.text :email
      t.text :name

      t.timestamps
    end
  end
end
