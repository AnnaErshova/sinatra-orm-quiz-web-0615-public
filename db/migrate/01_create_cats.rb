class CreateCats < ActiveRecord::Migration

  def up
    create_table :cats do |t|
      t.string :name
    end
  end

  def down
    drop_table :cats do |t|
      t.string :name
    end
  end
  
end