class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.integer :target_id
      t.string :target_type
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
