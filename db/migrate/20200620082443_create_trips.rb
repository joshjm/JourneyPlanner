class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.references :start, index: true, foreign_key: {to_table: 'stops'}
      t.references :end, index: true, foreign_key: {to_table: 'stops'}

      t.timestamps
    end
  end
end
