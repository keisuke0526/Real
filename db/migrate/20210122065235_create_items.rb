class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :image
      t.string :item_explanation
      t.string :text

      t.timestamps
    end
  end
end
