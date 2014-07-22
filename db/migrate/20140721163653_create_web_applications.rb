class CreateWebApplications < ActiveRecord::Migration
  def change
    create_table :web_applications do |t|
      t.string :name, null: false, default: ''
      t.string :url,  null: false, default: ''

      t.text :description

      t.timestamps
    end
  end
end
