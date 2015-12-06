class AddSaleStatusToLitters < ActiveRecord::Migration
  def change
    add_column :litters, :status, :integer
  end
end
