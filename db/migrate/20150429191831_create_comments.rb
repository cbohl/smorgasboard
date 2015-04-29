class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to  :user
      t.belongs_to  :game
      t.text  :body

      t.timestamps null: false
    end
  end
end
