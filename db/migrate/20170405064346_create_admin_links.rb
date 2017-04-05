class CreateAdminLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_links do |t|
      t.string :title
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
