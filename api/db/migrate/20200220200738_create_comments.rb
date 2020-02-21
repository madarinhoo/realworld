# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :profile, null: false, foreign_key: true
      t.belongs_to :article, null: false, foreign_key: true
      t.text :body, null: false

      t.timestamps
    end
  end
end