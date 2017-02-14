class CreateFilesApps < ActiveRecord::Migration
  def change
    create_table :files_apps do |t|
      t.attachment :avatar
      t.timestamps null: false
    end
  end
end
