class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string :presidency
      t.string :president
      t.string :took_office
      t.string :left_office
      t.string :party
      t.string :picture
      t.string :state
      t.string :term
      t.text :biography

      t.timestamps
    end
  end
end
