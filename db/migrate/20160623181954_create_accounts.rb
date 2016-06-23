class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :nickname

      t.timestamps null: false
    end
  end
end
