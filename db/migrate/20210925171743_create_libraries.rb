# frozen_string_literal: true

class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string  :name
      t.string  :country
      t.text    :body

      t.timestamps
    end
  end
end
