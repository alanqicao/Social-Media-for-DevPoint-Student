class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :summary
      t.string :genre
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
