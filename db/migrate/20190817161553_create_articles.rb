class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.reference :user

      t.timestamps
    end
  end
end
