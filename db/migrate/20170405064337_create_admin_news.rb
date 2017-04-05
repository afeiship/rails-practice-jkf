class CreateAdminNews < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_news do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
