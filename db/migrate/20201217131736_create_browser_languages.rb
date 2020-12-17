class CreateBrowserLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :browser_languages do |t|
      t.string :language
      t.string :extension
      t.string :csmart_link_title_variant
      t.references :smart_link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
