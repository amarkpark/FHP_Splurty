class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
    	t.string :pickupline
    	t.string :author
     	
     	t.timestamps
    end
  end
end
