class CreateRelationship < ActiveRecord::Migration[5.1]
    def change
      create_table :relationship do |t|
        t.timestamps
      end
    end
  end