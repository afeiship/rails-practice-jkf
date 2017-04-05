class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :title
      t.string :desc
      t.string :image

      t.timestamps
    end
  end
end
