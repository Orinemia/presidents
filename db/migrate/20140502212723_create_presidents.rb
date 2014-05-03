class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.integer :presidentNumber
      t.string :name
      t.text :biography
      t.string :termStart
      t.string :termEnd
      t.string :partyAffiliation
      t.string :picture
      t.string :state
      t.integer :term

      t.timestamps
    end
  end
end
