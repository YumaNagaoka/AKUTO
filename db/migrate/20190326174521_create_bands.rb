class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :band_name
      t.string :number_of_people
      t.string :time
      t.string :member_1
      t.string :member_2
      t.string :member_3

      t.timestamps
    end
  end
end
