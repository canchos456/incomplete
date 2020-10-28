class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :content2
      t.text :content3
      t.text :content4
      t.text :content5
      t.text :content6
      t.timestamps
    end
  end
end
