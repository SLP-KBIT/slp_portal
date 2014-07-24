class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string  :name,                 null: false, default: ''
      t.text    :description
      t.string  :ip_address,           null: false, default: ''
      t.boolean :static_ip_flag,       null: false, default: false
      t.boolean :name_resolution_flag, null: false, default: false
      t.string  :outside_open_ports,   null: false, default: ''

      t.timestamps
    end

    add_column :web_applications, :server_id, :integer, null: false, default: 0
  end
end
