class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
    	t.references :song
		t.timestamps null: false
    end
  end
end
