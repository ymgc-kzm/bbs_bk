class CreateTestbbs < ActiveRecord::Migration
  def change
    create_table :testbbs do |t|
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
