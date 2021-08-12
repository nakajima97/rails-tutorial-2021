class AddAdminToUsers < ActiveRecord::Migration[6.1]
  def change
    # defaultでは管理者になれないことを表すためにdefault: falseを渡している
    add_column :users, :admin, :boolean, default: false
  end
end
