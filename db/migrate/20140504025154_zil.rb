class Zil < ActiveRecord::Migration
  def up
  	drop_table :presidents
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
