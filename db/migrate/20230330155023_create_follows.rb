class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.integer :follow_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
