class AddHashIdToImpacts < ActiveRecord::Migration[6.0]
  def change
    add_column :impacts, :hash_id, :string, index: true
    Impact.all.each{|m| m.set_hash_id; m.save}
  end
end
