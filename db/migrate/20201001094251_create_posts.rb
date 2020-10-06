class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :room,    null: false
      t.text :problem,    null: false
      t.text :detail,     null: false
      t.integer :react1,  default: "0"
      t.integer :react2,  default: "0"
      t.integer :react3,  default: "0"
      t.timestamps
    end
  end
end
