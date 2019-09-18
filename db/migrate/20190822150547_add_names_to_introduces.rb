class AddNamesToIntroduces < ActiveRecord::Migration[5.1]
  def change
    add_column :introduces, :name, :string, default: "無名の子"
  end
end
