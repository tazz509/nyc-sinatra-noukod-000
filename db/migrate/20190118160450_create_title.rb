class CreateTitle < ActiveRecord::Migration
  def change
    create_table :title |do|
    t.string :name
  end
end
