class ArrayColumnInPolicies < ActiveRecord::Migration
  def change
    change_column :reservation_policies, :apply_on, :integer, array: true, default: []
  end
end
