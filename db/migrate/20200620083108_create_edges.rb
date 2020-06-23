class CreateEdges < ActiveRecord::Migration[5.2]
  def change
    create_table :edges do |t|
      t.references :from, index: true, foreign_key: {to_table: 'stops'}
      t.references :to, index: true, foreign_key: {to_table: 'stops'}

      t.timestamps
    end
  end
end
