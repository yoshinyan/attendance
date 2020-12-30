class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.sting :name

      t.timestamps
    end
  end
end
