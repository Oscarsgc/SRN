class CreateCalifications < ActiveRecord::Migration
  def change
    create_table :califications do |t|
      t.string :name
      t.integer :ponderation

      t.timestamps
    end
  end
end
