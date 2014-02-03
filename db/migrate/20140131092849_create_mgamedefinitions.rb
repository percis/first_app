class CreateMgamedefinitions < ActiveRecord::Migration
  def change
    create_table :mgamedefinitions do |t|
      t.integer :formatid
      t.integer :typeid
      t.integer :min_players
      t.integer :max_players
      t.float :entryfee
      t.integer :drop_pts
      t.integer :maxscore
      t.integer :usebot
      t.string :note
      t.integer :min_ante
      t.integer :max_ante
      t.integer :min_buyin
      t.integer :max_buyin
      t.integer :min_stake
      t.integer :max_stake
      t.integer :gametimer

      t.timestamps
    end
  end
end
