class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.text :status
      t.integer :trackable_id
      t.text    :trackable_type
      t.timestamps
    end
    add_index :activities, [:trackable_type, :trackable_id]
  end
end

