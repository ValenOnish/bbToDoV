class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :title
      t.string :content
      t.boolean :completed

      t.timestamps
    end
  end
end
