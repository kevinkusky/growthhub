class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: true
      t.string :name, null: false
      t.string :token, null: false
      t.string :refresh_token, null: true
      t.string :provider, null: true
      t.string :uid, null: false, index: true
      t.datetime :last_login_at
      t.timestamps
    end
  end
end
