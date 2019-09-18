class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :follow_id, foreign_key: { to_table: :users }

      t.timestamps

      t.index [:user_id, :follow_id], unique: true
    end
  end
end
