class CreateFigureTitles < ActiveRecord::Migration
  def change
    create_table :figure_titles |do|
    t.integer :title_id
    t.integer :figure_id
  end
end
