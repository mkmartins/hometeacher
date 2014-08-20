class CreateHomeTeachers < ActiveRecord::Migration
  def change
    create_table :home_teachers do |t|
      t.string :email
      t.string :phone_number
      t.string :name
      t.references :member, index: true

      t.timestamps
    end
  end
end
