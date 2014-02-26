class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :grade
      t.references :calification
      t.timestamps
    end
     add_index :notes, :calification_id
  end
end
