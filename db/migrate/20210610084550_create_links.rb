class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :name
      t.references :from
      t.references :to

      t.timestamps
    end

    add_foreign_key :links, :entities, column: :from_id, primary_key: :id
    add_foreign_key :links, :entities, column: :to_id, primary_key: :id
  end
end
