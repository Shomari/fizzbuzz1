class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
    	t.string :fizzbuzz
    	t.integer :value

      t.timestamps null: false
    end
  end
end
