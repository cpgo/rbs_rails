class CreateBlogUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_users, primary_key: [:user_id, :blog_id] do |t|
      t.references :user, null: false, foreign_key: true
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
