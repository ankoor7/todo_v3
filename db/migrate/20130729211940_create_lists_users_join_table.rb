class CreateListsUsersJoinTable < ActiveRecord::Migration
  def change
create_table :lists_users do |t|
      t.belongs_to :list
      t.belongs_to :user
    end
  # Adding the index can massively speed up join tables. Don't use the
  # unique if you allow duplicates.
  add_index(:lists_users, [:user_id, :list_id], :unique => true)
  end
end
