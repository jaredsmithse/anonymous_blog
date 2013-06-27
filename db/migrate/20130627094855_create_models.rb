class CreateModels < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :title, :null => false
  		t.text :body, :null => false
  		t.integer :author_id
  	end

  	create_table :tags do |t|
  		t.string :title
  	end

  	create_table :tag_posts do |t|
  		t.integer :post_id
  		t.integer :tag_id
  	end
  end
end
