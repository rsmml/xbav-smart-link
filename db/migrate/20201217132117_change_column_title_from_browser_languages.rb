class ChangeColumnTitleFromBrowserLanguages < ActiveRecord::Migration[6.0]
  def change
    rename_column :browser_languages, :csmart_link_title_variant, :new_title
  end
end
