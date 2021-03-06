# frozen_string_literal: true

class CreateRailsAdminHistoriesTable < ActiveRecord::Migration[4.2]
  def change
    create_table :rails_admin_histories do |t|
      t.string :message # title, name, or object_id
      t.string :username
      t.integer :item
      t.string :table
      t.integer :month, limit: 2
      t.integer :year, limit: 5
      t.timestamps
    end

    add_index(:rails_admin_histories, %i[item table month year], name: 'index_rails_admin_histories')
  end
end
