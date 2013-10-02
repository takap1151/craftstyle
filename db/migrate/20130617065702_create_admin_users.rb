class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :email
      t.string :password_digest
      t.string :admin_name

      t.timestamps
    end
  end
end
