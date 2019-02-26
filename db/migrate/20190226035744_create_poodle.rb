class CreatePoodle < ActiveRecord::Migration[5.2]
  def change
    create_table :poodles do |t|
      t.string :url
      t.integer :ranking
    end
  end
end
