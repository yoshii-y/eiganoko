class CreateIntroduces < ActiveRecord::Migration[5.1]
    def change
      create_table :introduces do |t|
        t.timestamps
      end
    end
  end