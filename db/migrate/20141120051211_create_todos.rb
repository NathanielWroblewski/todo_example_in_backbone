class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :urgency, null: false
      t.datetime :completed_at
    end
  end
end
