class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.string :post
      t.string :references

      t.timestamps
    end
  end
end
