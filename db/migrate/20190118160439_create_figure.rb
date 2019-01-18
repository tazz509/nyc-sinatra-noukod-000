class CreateFigure < ActiveRecord::Migration
  def change
    create_table :figure do |t|
      t.string :name
  end
end
