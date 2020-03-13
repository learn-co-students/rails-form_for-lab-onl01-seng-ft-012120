class ChangeSchoolclassName < ActiveRecord::Migration[5.0]
  def change
    drop_table :schoolclass

    create_table :school_classes do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
