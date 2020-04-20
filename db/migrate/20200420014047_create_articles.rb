class CreateArticles < ActiveRecord::Migration[6.0]
  def change # called when the migration is run
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
