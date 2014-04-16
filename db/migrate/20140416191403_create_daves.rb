class CreateDaves < ActiveRecord::Migration
  def change
    create_table :daves do |t|
      t.string :name
      t.integer :age
      t.boolean :sex

      t.timestamps
    end
  end
end
