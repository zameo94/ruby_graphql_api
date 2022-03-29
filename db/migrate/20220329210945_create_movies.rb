class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.integer :year
      t.string :genre

      t.timestamps
    end
  end
end
