class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :author, :string
      t.column :content, :string
      t.timestamps
    end
  end
end
