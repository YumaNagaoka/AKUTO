class RemoveMemberFromBands < ActiveRecord::Migration[5.2]
  def change
    remove_column :bands, :member_1, :string
    remove_column :bands, :member_2, :string
    remove_column :bands, :member_3, :string
  end
end
