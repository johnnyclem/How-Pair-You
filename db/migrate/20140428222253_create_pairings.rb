class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
      t.datetime :from
      t.datetime :till
      t.string :student
      t.string :teacher
      t.string :repo

      t.timestamps
    end
  end
end
