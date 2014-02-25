class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :grade
      t.references :calification, index: true
      t.timestamps
    end
  end
end
