class CreateHomeTeachings < ActiveRecord::Migration
  def change
    create_table :home_teachings do |t|
    	t.belongs_to :member
      t.belongs_to :home_teacher

      t.timestamps
    end
  end
end
