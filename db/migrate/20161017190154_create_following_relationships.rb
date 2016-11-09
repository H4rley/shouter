class CreateFollowingRelationships < ActiveRecord::Migration
  def change
    create_table :following_relationships do |t|
      t.references :follower, index: true, foreign_key: true
      t.references :followed_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
