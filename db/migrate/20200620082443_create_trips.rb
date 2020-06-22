class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.integer :start_id#, foreign_key: {to_table: 'stops'} #replace interger with references to reset
      t.integer :end_id#, foreign_key: {to_table: 'stops'}

      t.timestamps
    end
    add_foreign_key :trips, :stops, column: :start_id
    add_index :trips, :start_id

    add_foreign_key :trips, :stops, column: :end_id
    add_index :trips, :end_id
  end
end
