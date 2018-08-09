class CreateCartoons < ActiveRecord::Migration[5.2]
  def change
    create_table :cartoons do |t|
      t.string :title
      t.integer :releaseyear
      t.string :country
      t.string :network
      t.string :studio
      t.integer :endyear
      t.text :summary
      t.string :image

      t.timestamps
    end
  end
end
