class AddCategoryToImpacts < ActiveRecord::Migration[6.0]
  def change
    add_column :impacts, :category, :string
  end
end
