class CreateSmartLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :smart_links do |t|
      t.string :title
      t.string :url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
