class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :entry_id
      t.string :user_id
      t.string :value

      t.timestamps
    end
  end
end
